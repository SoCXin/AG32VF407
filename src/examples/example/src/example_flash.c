#include "example.h"

#define FLASH_RD_START 0x80030000
#define FLASH_WR_START 0x80010000
#define FLASH_TEST_LEN 0x10000

static uint32_t flash_buf[FLASH_TEST_LEN/4];

// A function can be loaded to SRAM with the ".text.sram" section attribute. Note that any non-inline functions called 
// by this function will not be loaded to SRAM automatically. To load all functions (except startup code) to SRAM, use
// the FLASH_SRAM as BOOT_MODE. To load everything in SRAM and boot from SRAM, use SRAM as BOOT_MODE.
__attribute__((section(".text.sram")))
void TestFlashAddress(void)
{
  uint32_t tick = UTIL_GetTick();
  // Flash read can be done by directly reading the address.
  memcpy(flash_buf, (uint32_t *)FLASH_RD_START, FLASH_TEST_LEN);
  printf("Flash read from 0x%x to 0x%x (%d bytes) is done in %d ms\n",
         FLASH_RD_START, FLASH_RD_START + FLASH_TEST_LEN - 1, FLASH_TEST_LEN, UTIL_GetTick() - tick);

  // Fill the buffer with some data
  srand(read_csr(mcycle));
  for (int i = 0; i < FLASH_TEST_LEN / 4; ++i) {
    flash_buf[i] = random();
  }

  tick = UTIL_GetTick();
  // Flash must be unlocked before any erase or program operation.
  FLASH_Unlock();

  // Function FLASH_Erase() can be used to erase flash with given address and length. Other erase functions can be used: 
  // FLASH_EraseSector(), FLASH_EraseBlock(), and FLASH_EraseChip().
  FLASH_Erase(FLASH_WR_START, FLASH_TEST_LEN);
  printf("Flash erase from 0x%x to 0x%x (%d bytes) is done in %d ms\n",
         FLASH_WR_START, FLASH_WR_START + FLASH_TEST_LEN - 1, FLASH_TEST_LEN, UTIL_GetTick() - tick);

  // Verify that flash is blank after erase.
  for (uint32_t offset = 0; offset < FLASH_TEST_LEN; offset += 4) {
    uint32_t data = RD_REG(FLASH_WR_START + offset);
    if (data != 0xffffffff) {
      printf("Error flash data read at address 0x%x, value: 0x%x\n", FLASH_WR_START + offset, data);
      return;
    }
  }
  printf("Flash erase verified successfully\n");

  tick = UTIL_GetTick();
  // The simplest way to program flash.
  FLASH_FastProgram(FLASH_WR_START, (uint32_t)flash_buf, FLASH_TEST_LEN / 2);
  printf("Flash program from 0x%x to 0x%x (%d bytes) is done in %d ms\n",
         FLASH_WR_START, FLASH_WR_START + FLASH_TEST_LEN / 2 - 1, FLASH_TEST_LEN / 2, UTIL_GetTick() - tick);

  tick = UTIL_GetTick();
  // Use DMA to program flash, and process user code while waiting.
  PERIPHERAL_ENABLE(DMAC, 0);
  DMAC_Init();
  FLASH_EnableFastProgram();
  const uint32_t max_xfer_bytes = DMAC_MAX_TRANSFER_SIZE * 4; // Use 32-bit (4-byte) transfers
  for (uint32_t offset = FLASH_TEST_LEN / 2; offset < FLASH_TEST_LEN; offset += max_xfer_bytes) {
    uint32_t xfer_size = FLASH_TEST_LEN - offset;
    if (xfer_size > max_xfer_bytes) {
      xfer_size = max_xfer_bytes;
    }
    DMAC_Config(DMAC_CHANNEL0, (uint32_t)flash_buf + offset, FLASH_WR_START + offset,
                DMAC_ADDR_INCR_ON, DMAC_ADDR_INCR_ON, DMAC_WIDTH_32_BIT, DMAC_WIDTH_32_BIT,
                DMAC_BURST_256, DMAC_BURST_256, xfer_size / 4, DMAC_MEM_TO_MEM_DMA_CTRL, 0, 0);
    printf("Programming flash at 0x%x for %d bytes\n", FLASH_WR_START + offset, xfer_size);
    while (DMAC_IsEnabledChannel(DMAC_CHANNEL0)) {
      // User code can be processed here
    }
  }
  FLASH_StopFastProgram();
  printf("Flash program from 0x%x to 0x%x (%d bytes) is done in %d ms\n",
         FLASH_WR_START + FLASH_TEST_LEN / 2, FLASH_WR_START + FLASH_TEST_LEN - 1, FLASH_TEST_LEN / 2, UTIL_GetTick() - tick);
  FLASH_Lock();

  // Verify flash content just programmed
  for (uint32_t offset = 0; offset < FLASH_TEST_LEN; offset += 4) {
    uint32_t data = RD_REG(FLASH_WR_START + offset);
    if (data != flash_buf[offset / 4]) {
      printf("Error flash data read at address 0x%x, value: 0x%x, expected: 0x%x\n", FLASH_WR_START + offset, data, flash_buf[offset / 4]);
      return;
    }
  }
  printf("Flash content verified successfully\n");
}


// By default data are allocated in SRAM. Any data assigned to ".flash.*" sections will be automatically allocated to 
// flash by linker script. For read only data, assigning the section is all that is needed.
__attribute__((section(".flash.readonly")))
static uint8_t ro_data[64] = { 0x5a, 0xa5 };

// For any read write data on flash, align it to flash sectors (4KB) and make its size a multiple of sector size so that 
// a flash erase won't overwrite other data.
__attribute__((section(".flash.readwrite")))
__attribute__((aligned(SPI_FLASH_SECTOR_SIZE)))
static uint8_t rw_data[SPI_FLASH_SECTOR_SIZE * 2] = { 0xef, 0xbe };

__attribute__((section(".text.sram")))
void TestFlashSymbol(void)
{
  printf("Read only  data on flash: 0x%02x%02x\n", ro_data[1], ro_data[0]);
  printf("Read write data on flash: 0x%02x%02x\n", rw_data[1], rw_data[0]);

  // Erase and program the read write data.
  FLASH_Unlock();
  FLASH_Erase((uint32_t)rw_data, sizeof(rw_data));
  printf("Read write data after erase: 0x%02x%02x\n", rw_data[1], rw_data[0]);
  FLASH_EnableFastProgram();
  FLASH_FastProgram((uint32_t)rw_data, (uint32_t)flash_buf, sizeof(rw_data));
  FLASH_StopFastProgram();
  printf("Read write data after program: 0x%02x%02x\n", rw_data[1], rw_data[0]);
  FLASH_Lock();
}

void TestFlashInfo(void)
{
  uint32_t uid[4];
  FLASH_Unlock(); // Unlock to run any FLASH_FlexRead() based functions

  printf("Flash capacity: %d bytes\n", FLASH_GetCapacity());
  FLASH_GetUniqueID(uid);
  printf("Unique ID: 0x%08x%08x%08x%08x\n", uid[3], uid[2], uid[1], uid[0]);
}

void TestFlash(void)
{
  // Show flash info
  TestFlashInfo();
  // Flash read/write example with the given address
  TestFlashAddress();
  // Flash read/write example with symbols
  TestFlashSymbol();
}
