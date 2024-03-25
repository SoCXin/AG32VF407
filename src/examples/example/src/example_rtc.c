#include "example.h"

static bool isr_alarm, isr_ow;
void RTC_isr()
{
  if (RTC_IsIntActive(RTC_FLAG_SEC)) {
    printf("RTC second interupt: 0x%x\n", RTC_GetCounter());
    RTC_ClearInt(RTC_FLAG_SEC);
  }
  if (RTC_IsIntActive(RTC_FLAG_ALR)) {
    printf("RTC alarm interupt: 0x%x\n", RTC_GetCounter());
    RTC_ClearInt(RTC_FLAG_ALR);
    isr_alarm = true;
  }
  if (RTC_IsIntActive(RTC_FLAG_OW)) {
    printf("RTC overflow interupt: 0x%x\n", RTC_GetCounter());
    RTC_ClearInt(RTC_FLAG_OW);
    isr_ow = true;
  }
}

void RtcStat()
{
  time_t now = RTC_GetCounter();
  struct tm *tm = gmtime(&now);
  printf("%d:%02d:%02d-%02d:%02d:%02d\n", tm->tm_year+1900, tm->tm_mon+1, tm->tm_mday, tm->tm_hour, tm->tm_min, tm->tm_sec);
  GPIO_ClearInt(BUT_GPIO, BUT_GPIO_BITS);
}

void TestRTC()
{
  RTC_Init(board_rtc_source());
  RTC_SetPrescaler(32768);
  RTC_SetCounter(0x20333);
  printf("rtc cnt: 0x%x\n", RTC_GetCounter());

  RTC_ClearFlag(RTC_FLAG_ALR);

  isr_alarm = isr_ow = false;
  INT_EnableIRQ(RTC_IRQn, RTC_PRIORITY);
  bool success = true;

  RTC_Reset();

  uint16_t flags = RTC_FLAG_ALR | RTC_FLAG_OW;
  uint32_t prescaler = 4;
  uint32_t alarm = 0x00000020;
  uint16_t bkp_data = 0x1234;
  uint8_t  calibration = 5;

  RTC_Init(board_rtc_source());
  RTC_EnableInt(flags);
  RTC_SetPrescaler(prescaler);
  RTC_SetOutputMode(RTC_OUTPUT_CLOCK);
  UTIL_IdleUs(500 * RTC_PERIOD / 1000);

  RTC_SetCounter(0xfffffffe);
  RTC_SetAlarm(alarm);
  RTC_SetCalibrationValue(calibration);
  RTC_SetOutputMode(RTC_OUTPUT_ALARM);
  RTC_WriteBackupRegister(3, bkp_data);

  while (!isr_alarm || !isr_ow); // Wait until both alarm and overflow interrupts are triggered

  SYS_SetAlarmWakupEdge(SYS_WAKEUP_EDGE_RISE);
  SYS_EnableDebugConfig(SYS_DBG_ALL);

  printf("Enter stop in TestRTC\n");
  RTC_SetPrescaler(32768);
  RTC_SetAlarm(1);
  RTC_SetCounter(0xffffffff);

  GPIO_Toggle(EXT_GPIO, EXT_GPIO_BITS);
  INT_DisableIRQ(RTC_IRQn);
  SYS_EnterStopMode();
  GPIO_Toggle(EXT_GPIO, EXT_GPIO_BITS);
  SYS_SetSclkAuto(SYS_GetPLLFreq());
  SYS_SwitchPLLClock(board_hse_source());
  SYS_ClearPendingWakeups();
  printf("Exit stop from alarm\n");
  INT_EnableIRQ(RTC_IRQn, RTC_PRIORITY);

  RTC_SetOutputMode(RTC_OUTPUT_SECOND);
  UTIL_IdleUs(5 * RTC_PERIOD / 1000);

  printf("RTC test %s\n", success ? "passed" : "failed");

  RTC_Reset();

  RTC_Init(board_rtc_source());
  RTC_SetPrescaler(32894);
  RTC_SetCalibrationValue(111);
  RTC_EnableInt(RTC_FLAG_ALR);

  time_t now = RTC_GetEpochSeconds(2021, 11, 19, 9, 13, 45);
  RTC_SetCounter(now);

  // Press button to dump RTC time
  button_isr_cb = RtcStat;
}
