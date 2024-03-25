#include "example.h"

static SPI_TypeDef *spi __attribute__((aligned (4))) = (SPI_TypeDef *) 0x0;

static DMAC_ChannelNumTypeDef spi_dmac_channel = DMAC_CHANNEL6;
static volatile bool spi_isr_done = false;

// Name based isr predefined as weak in plic_isr
void SPI0_isr()
{
  SPI_ClearInt(spi);
  DMAC_DisableChannel(spi_dmac_channel);
  spi_isr_done = true;
}

void TestSpi()
{
  bool success = true;

  SYS_EnableAHBClock(AHB_MASK_DMAC0);
  DMAC_Init();

  // Use PERIPHERAL_ENABLE_ALL to enable all SPI pins, including SPI0_WPN_IO2 and SPI0_HOLDN_IO3
  PERIPHERAL_ENABLE_ALL(SPI, 0);
  INT_EnableIRQ(SPIx_IRQn(0), SPI_PRIORITY);

  spi = SPIx(0);

  DMAC_DisableSyncRequest(SPI_TX_DMA_REQ(spi));
  DMAC_DisableSyncRequest(SPI_RX_DMA_REQ(spi));

  uint32_t pclk_freq = SYS_GetPclkFreq();
  SPI_SclkDivTypeDef spi_sclk_div = pclk_freq > 240 ? SPI_CTRL_SCLK_DIV16 : pclk_freq > 120 ? SPI_CTRL_SCLK_DIV8 : SPI_CTRL_SCLK_DIV4;
  SPI_FLASH_Init(spi, spi_sclk_div);

  SPI_FLASH_PowerDown(spi);
  UTIL_IdleUs(20);
  uint32_t eid = SPI_FLASH_ReleaseDP(spi);
  printf("Electronic ID: 0x%x\n", eid);

  uint32_t rdid = SPI_FLASH_ReadID(spi);
  printf("RDID: 0x%06x\n", rdid);
  uint32_t mfid = SPI_FLASH_ReadManufacturerID(spi);
  printf("MFID: 0x%04x\n", mfid);
  
  uint32_t uniqueID[4] = {0, 0, 0, 0};
  uint64_t mcycle = UTIL_GetMcycle();
  SPI_FLASH_ReadUniqueID(spi, uniqueID, spi_dmac_channel);
  mcycle = UTIL_GetMcycle() - mcycle;
  printf("Unique id: 0x%08x%08x%08x%08x\n", uniqueID[3], uniqueID[2], uniqueID[1], uniqueID[0]);
  printf("In %d us\n", UTIL_McycleToUs(mcycle));

  SPI_FLASH_QuadEnable(spi);
  printf("Status reg: 0x%04x\n", SPI_FLASH_ReadStatus(spi));

  const uint32_t FLASH_ADDR = 0x010000;
  const uint32_t FLASH_SIZE = 0x11f90;
  printf("Testing flash from addr: 0x%06x, size: 0x%x\n\n", FLASH_ADDR, FLASH_SIZE);
  uint32_t *buf = AlignedMalloc(4, FLASH_SIZE);
  if (!buf) {
    printf("Failed to allocate memory of %d bytes!", FLASH_SIZE);
    return;
  }

// #define FLASH_DPP_SUPPORT // Dual page program is supported by Puya flash, but not by GD flash
  for (int i = 0; i < 3; ++i) {
    const SPI_PhaseModeTypeDef FLASH_READ_MODE = i == 0 ? SPI_PHASE_MODE_SINGLE : i == 1 ? SPI_PHASE_MODE_DUAL : SPI_PHASE_MODE_QUAD;
    SPI_PhaseModeTypeDef FLASH_WRITE_MODE = FLASH_READ_MODE;
#ifndef FLASH_DPP_SUPPORT
    if (FLASH_WRITE_MODE == SPI_PHASE_MODE_DUAL) {
      FLASH_WRITE_MODE = SPI_PHASE_MODE_SINGLE;
    }
#endif

#define FLASH_MODE_STR(__mode) (__mode == SPI_PHASE_MODE_SINGLE ? "single" : __mode == SPI_PHASE_MODE_DUAL ? "dual" : "quad")
    printf("  flash read mode: %s, write mode: %s\n", FLASH_MODE_STR(FLASH_READ_MODE), FLASH_MODE_STR(FLASH_WRITE_MODE));

    SPI_FLASH_Erase(spi, FLASH_ADDR, FLASH_SIZE);
    SPI_FLASH_Read(spi, buf, FLASH_ADDR, FLASH_SIZE, FLASH_READ_MODE, spi_dmac_channel);
    for (int i = 0; i < FLASH_SIZE / 4; ++i) {
      if (buf[i] != 0xffffffff) {
        printf("Erase check failed at addr: 0x%06x, data: 0x%08x\n", FLASH_ADDR + i * 4, buf[i]);
        success = false;
        break;
      }
      buf[i] = random();
    }

    uint32_t *buf1 = buf + FLASH_SIZE / 8; // Pointer at half way
    mcycle = UTIL_GetMcycle();
    SPI_FLASH_Write(spi, buf, FLASH_ADDR, FLASH_SIZE/2, FLASH_WRITE_MODE, spi_dmac_channel);
    mcycle = UTIL_GetMcycle() - mcycle;
    printf("  Write time: %d us\n", UTIL_McycleToUs(mcycle));
    mcycle = UTIL_GetMcycle();
    SPI_FLASH_Read(spi, buf1, FLASH_ADDR, FLASH_SIZE/2, FLASH_READ_MODE, spi_dmac_channel);
    mcycle = UTIL_GetMcycle() - mcycle;
    printf("  Read  time: %d us\n", UTIL_McycleToUs(mcycle));
    for (int i = 0; i < FLASH_SIZE / 8; ++i) {
      if (buf[i] != buf1[i]) {
        printf("Write/read check failed at addr: 0x%06x, data: 0x%08x vs 0x%08x\n", FLASH_ADDR + i * 4, buf[i], buf1[i]);
        success = false;
        break;
      }
    }
    // Test spi interrupt
    SPI_FLASH_WritePage(spi, buf, FLASH_ADDR, 0x100, FLASH_WRITE_MODE, spi_dmac_channel, SPI_INTERRUPT_ON);
    while (!spi_isr_done);
    spi_isr_done = false;
    printf("\n");
  }

  SPI_FLASH_EraseSector(spi, FLASH_ADDR, SPI_INTERRUPT_ON);
  while (!spi_isr_done);
  spi_isr_done = false;

  AlignedFree(buf);
  printf("SPI %d test %s!\n\n", 0, success ? "passed" : "failed");
}
