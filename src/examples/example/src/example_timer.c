#include "example.h"

static int TIMER_DELAY;

void TestTimer()
{
  SYS_EnableAPBClock(APB_MASK_TIMER0);

  TIMER_DELAY = 500e3;
  TIM_Init1(TIMER0, TIMER_DELAY, TIMER_MODE_PERIODIC);

  TIMER_DELAY = 0xfff0; // 16 bit
  TIM_SetLoad2(TIMER0,      TIMER_DELAY);
  TIM_SetSize2(TIMER0,      TIMER_SIZE_16);
  TIM_SetMode2(TIMER0,      TIMER_CTRL_ONESHOT);
  TIM_SetPrescaler2(TIMER0, TIMER_PRESCALE_256);
  TIM_EnableInt2(TIMER0);
  TIM_EnableTimer2(TIMER0);

  INT_EnableIRQ(TIMER0_IRQn, TIMER_PRIORITY);
  while (1);
}

void TIMER0_isr()
{
  if (TIM_IsRawIntActive1(TIMER0)) {
    TIM_ClearInt1(TIMER0);
    GPIO_Toggle(EXT_GPIO, 0x2);
  }
  if (TIM_IsRawIntActive2(TIMER0)) {
    TIM_ClearInt2(TIMER0);
    TIM_SetLoad2(TIMER0, TIMER_DELAY);
    GPIO_Toggle(EXT_GPIO, 0x4);
  }
}
