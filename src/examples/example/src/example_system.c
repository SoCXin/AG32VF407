#include "example.h"

void TestIwdg(const uint8_t iwdg_pr, IWDG_FreezeTypeDef freeze_mode, IWDG_ClkSourceTypeDef clk_source)
{
  uint32_t sleep_ms = (1 << 12) * (1 << (iwdg_pr + 1)) * RTC_PERIOD / 1000000;
  printf("Iwdg with pr %d will trigger every %d ms. Will%s freeeze in stop. Will%s freeeze in standby.\n",
              iwdg_pr, sleep_ms,
              freeze_mode & IWDG_STOP_FREEZE    ? "" : " not",
              freeze_mode & IWDG_STANDBY_FREEZE ? "" : " not");

  if (clk_source == IWDG_CLK_SOURCE_LSE) {
    RTC_Init(board_rtc_source());
  }
  IWDG_SetPrescaler(iwdg_pr);
  IWDG_SetFreezeMode(freeze_mode);
  IWDG_SetClkSource(clk_source);
  IWDG_Enable();

  printf("IWDG is %s\n", IWDG_IsEnabled() ? "enabled" : "disabled");
}

void TestSleep(void)
{
  printf("Enter sleep\n");
  SYS_EnterSleepMode();
  // Should exit on any interrupt, e.g. button pressed
  printf("Exit sleep\n");
}

void TestStop()
{
  // NOTE: To exit from stop, please make sure EXT_INT0 is assigned to an active low button in .ve
  SYS_SetWakeupEdgeByID(SYS_WAKEUP_EXT_INT0_ID, SYS_WAKEUP_EDGE_FALL);

  printf("Enter stop, press the button assigned to EXT_INT0 to exit\n");
  WAIT_UART;
  SYS_EnterStopMode();

  // Exit on EXT_INT0
  SYS_SwitchPLLClock(board_hse_source());
  printf("Exit stop\n");
}

void TestStandby(int mode)
{
  switch (mode) {
  case 0: // IWDG
    TestIwdg(0x4, IWDG_FREEZE_STOP, IWDG_CLK_SOURCE_LSE);
    printf("Enter standby with IWDG\n");
    break;
  case 1: // RTC
    IWDG_Disable();
    RTC_Init(board_rtc_source());
    RTC_SetPrescaler(32768);
    RTC_SetCounter(0x200000);
    RTC_SetAlarm  (0x200002);
    printf("Enter standby with RTC alarm set to 2 sec\n");
    break;
  case 2: // None
    RTC_Init(board_rtc_source());
    printf("Enter standby. Can exit with wake up pin\n");
    break;
  default:
    return;
  }
  WAIT_UART;
  SYS_EnterStandbyMode();
  printf("Exit standby\n"); // Should never reach here
}

#define STANDBY_MODE_REG 0
void ClearStandbyMode(void)
{
  RTC_WriteBackupRegister(STANDBY_MODE_REG, 0);
  printf("Stand by mode reset to 0\n");
  UTIL_IdleMs(400);
}

void TestSystem()
{
  button_isr_cb = ClearStandbyMode;
  SYS_DisableDebugConfig(SYS_DBG_ALL);
  int mode = RTC_ReadBackupRegister(STANDBY_MODE_REG);
  RTC_WriteBackupRegister(STANDBY_MODE_REG, mode + 1);
  TestStandby(mode);
  TestSleep();
  TestStop();
}
