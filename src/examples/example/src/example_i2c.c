#include "example.h"

static volatile bool i2c_int = false;

void I2cISR()
{
  i2c_int = 1;
  I2C_ClearInt(I2C0);
}

bool I2cCheckInterrupt(bool expected)
{
  bool success = true;
  if (i2c_int != expected) {
    printf("Wrong interrupt value %d, %d expected\n", i2c_int, expected);
    success = false;
  }
  i2c_int = 0;
  return success;
}

bool I2cInit(uint32_t frequency)
{
  PERIPHERAL_ENABLE(I2C, 0);
  INT_EnableIRQ(I2C0_IRQn, I2C_PRIORITY);

  I2C_Init(I2C0, frequency);
  uint32_t pclk_freq = SYS_GetPclkFreq();
  uint16_t prescaler = I2C_GetPrescaler(I2C0);
  printf("I2C frequency: %d, prescaler: %d, apb clk frequency: %d\n", frequency, prescaler, pclk_freq);
  if (fabs((prescaler + 1) * 5.0 * frequency / pclk_freq - 1) > 0.01) {
    printf("I2C prescaler read mismatch, 0x%02x%02x, %d, %d\n", I2C0->PRERHI, I2C0->PRERLO, frequency, pclk_freq);
    return false;
  }
  return true;
}

static const uint8_t PROM_SLAVE_ADDR = 0b1010000;
static       uint8_t PROM_PAGE_CNT  = 32; // 32 pages
static const uint8_t PROM_PAGE_SIZE = 8;  // 8 bytes per page

bool I2cReadPROM(uint8_t *mem, bool verify)
{
  printf("\nPROM contents:\n");
  I2C_StartSend(I2C0, PROM_SLAVE_ADDR);
  I2C_SendData(I2C0, 0); // Start address, using a dummy write
  I2C_StartReceive(I2C0, PROM_SLAVE_ADDR);
  I2C_WaitForTransfer(I2C0);
  uint8_t data;
  for (int i = 0; i < PROM_PAGE_CNT; ++i) {
    printf("Mem 0x%02x:", i);
    for (int j = 0; j < PROM_PAGE_SIZE; ++j) {
      int idx = i * PROM_PAGE_SIZE + j;
      bool last_read = (i == PROM_PAGE_CNT - 1) && (j == PROM_PAGE_SIZE - 1);
      if (last_read) {
        data = I2C_StopReceiveWait(I2C0);
      } else {
        data = I2C_ReceiveDataWait(I2C0);
      }
      if (verify) {
        if (mem[idx] != data) {
          printf("\nPROM read mis-match: 0x%02x, expected: 0x%02x\n", data, mem[idx]);
          I2C_Stop(I2C0);
          I2C_WaitForBusy(I2C0);
          I2cCheckInterrupt(true);
          return false;
        }
      } else {
        mem[idx] = data;
      }
      printf(" %02x", mem[idx]);
    }
    printf("\n");
  }
  return true;
}

bool I2cWritePROM(uint8_t *mem)
{
  for (int i = 0; i < PROM_PAGE_CNT; ++i) {
    I2C_StartSend(I2C0, PROM_SLAVE_ADDR);
    I2C_SendData(I2C0, i * PROM_PAGE_SIZE); // Page start address
    for (int j = 0; j < PROM_PAGE_SIZE; ++j) {
      int idx = i * PROM_PAGE_SIZE + j;
      mem[idx] += idx;
      bool last_write = (j == PROM_PAGE_SIZE - 1);
      if (last_write) {
        I2C_StopSend(I2C0, mem[idx]);
      } else {
        I2C_SendData(I2C0, mem[idx]);
      }
    }
    do {
      I2C_StartSend(I2C0, PROM_SLAVE_ADDR);
      I2C_WaitForTransfer(I2C0);
    } while (I2C_IsRxNACK(I2C0)); // Poll until ACK is received
  }
  return true;
}

void TestI2cPROM() // Testing AT24C02
{
  bool success = true;
  uint8_t *mem = malloc(PROM_PAGE_CNT * PROM_PAGE_SIZE);

  I2cInit(400e3);
  I2C_Enable(I2C0);

  // First read and print all current eeprom contents
  success = success && I2cReadPROM(mem, false);
  
  // Now test write
  success = success && I2cWritePROM(mem);

  // Verify
  success = success && I2cReadPROM(mem, true);

  printf("PROM test %s!\n", success ? "passed" : "failed");
  I2C_Disable(I2C0);
  free(mem);
}

void TestI2c()
{
  plic_isr[I2C0_IRQn] = I2cISR;

  TestI2cPROM();
}
