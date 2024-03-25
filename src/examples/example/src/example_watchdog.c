#include "example.h"

static int wdog_counter = 0;
void TestWdog()
{
  printf("WDOG reset flag: %d\n", SYS_IsActiveResetFlag_WDOG());
  SYS_ClearResetFlags();
  SYS_EnableAPBClock(APB_MASK_WATCHDOG0);
  INT_EnableIRQ(WATCHDOG0_IRQn, WDOG_PRIORITY);
  WDOG_Init(SYS_GetPclkFreq()); // 1 second
  printf("Wdog init load: %d, will %sbe stopped in debug\n",
              WDOG_GetLoad(), SYS_IsEnabledAPBClkStop(APB_MASK_WATCHDOG0) ? "" : "not ");

  if (READ_BIT(SYS->RST_CNTL, SYS_RSTF_WDOG)) {
    printf("Watchdog reset detected!\n");
    SYS_ClearResetFlags();
    SYS_EnableAPBClkStop(APB_MASK_WATCHDOG0);
  } else {
    SYS_DisableAPBClkStop(APB_MASK_WATCHDOG0);
  }
}

void WATCHDOG0_isr()
{
  // Watchdog will fail after 3 times
  if (wdog_counter++ < 3) {
    printf("WDOG counter: %d\n", wdog_counter);
    WDOG_ClearInt();
  }
}
