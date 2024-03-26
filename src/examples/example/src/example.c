#include "example.h"

void Button_isr(void)
{
  if (button_isr_cb) {
    button_isr_cb();
  }
  UTIL_IdleMs(400); // to debounce
  GPIO_ClearInt(BUT_GPIO, BUT_GPIO_BITS);
}

void MTIMER_isr(void)
{
  GPIO_Toggle(EXT_GPIO, EXT_GPIO_BITS);
  INT_SetMtime(0);
}

void TestMtimer(int ms)
{
  clint_isr[IRQ_M_TIMER] = MTIMER_isr;
  INT_SetMtime(0);
  INT_SetMtimeCmp(SYS_GetSysClkFreq() / 1000 * ms);
  INT_EnableIntTimer();
  while (1);
}

int main(void)
{
  // This will init clock and uart on the board
  board_init();
  
  // The default isr table is plic_isr. The default entries in the table are peripheral name based like CAN0_isr() or
  // GPIO0_isr(), and can be re-assigned.
  plic_isr[BUT_GPIO_IRQ] = Button_isr;
  // Any interrupt priority needs to be greater than MIN_IRQ_PRIORITY to be effective
  INT_SetIRQThreshold(MIN_IRQ_PRIORITY);
  // Enable interrupt from BUT_GPIO
  INT_EnableIRQ(BUT_GPIO_IRQ, PLIC_MAX_PRIORITY);

  // TestMtimer(500);
  // TestAnalog();
  // TestCan();
  // TestCrc();
  // TestFcb();
  // TestGpTimer();
  // TestGpTimerPwm();
  // TestI2c();
  // TestRTC();
  // TestSpi();
  // TestSystem();
  // TestTimer();
  // TestWdog();
  // TestUart();
  // TestFlash();
  TestGpio();
}
