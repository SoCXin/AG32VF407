#ifndef EXAMPLE_H
#define EXAMPLE_H

#include "board.h"

#ifndef MSG_UART_ID
#define MSG_UART_ID 1
#endif

#define MIN_IRQ_PRIORITY 1
#define MAX_IRQ_PRIORITY PLIC_MAX_PRIORITY

#define I2C_PRIORITY    (MIN_IRQ_PRIORITY + 1)
#define TIMER_PRIORITY  (MIN_IRQ_PRIORITY + 2)
#define DMAC_PRIORITY   (MIN_IRQ_PRIORITY + 8)
#define UART_PRIORITY   (MIN_IRQ_PRIORITY + 9)
#define CAN_PRIORITY    (MIN_IRQ_PRIORITY + 7)
#define RTC_PRIORITY    (MIN_IRQ_PRIORITY + 6)
#define EXT_PRIORITY    (MIN_IRQ_PRIORITY + 4)
#define SPI_PRIORITY    (MIN_IRQ_PRIORITY + 5)
#define MEMSPI_PRIORITY (MIN_IRQ_PRIORITY + 1)
#define GPIO_PRIORITY   (MIN_IRQ_PRIORITY + 1)
#define FLASH_PRIORITY  (MAX_IRQ_PRIORITY - 5)
#define USB_PRIORITY    (MAX_IRQ_PRIORITY - 1)
#define MAC_PRIORITY    (MAX_IRQ_PRIORITY - 1)
#define WDOG_PRIORITY   (MAX_IRQ_PRIORITY - 0)

__attribute__((weak)) void (*button_isr_cb)(void);

#define WAIT_UART { if (MSG_UART) while (UART_IsTxBusy(MSG_UART)); }

void TestGpio(void);
void TestCan(void);
void TestCrc(void);
void TestFcb(void);
void TestGpTimer(void);
void TestGpTimerPwm(void);
void TestI2c(void);
void TestRTC(void);
void TestSpi(void);
void TestSystem(void);
void TestTimer(void);
void TestWdog(void);
void TestAnalog(void);
void TestUart(void);
void TestFlash(void);

#endif
