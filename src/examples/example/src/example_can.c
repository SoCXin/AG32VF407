#include "example.h"

const char can_data_bytes0[] = { 0x55, 0x77 };
const char can_data_bytes1[] = { 0x99, 0xbb };

void CanTx(uint32_t can_id, CAN_FrameFormatTypeDef frame_format, CAN_RemoteTypeDef rtr,
           CAN_DataLengthTypeDef dlc, const char *data_bytes)
{
  CAN_TxMessageTypeDef tx_msg;
  tx_msg.ID = can_id;
  tx_msg.FF = frame_format;
  tx_msg.DLC = dlc;
  tx_msg.RTR = rtr;
  for (int i = 0; i < dlc; ++i) {
    tx_msg.Data[i] = data_bytes[i];
  }

  printf("can tx %s %s, dlc: %d, id: 0x%x\n",
              tx_msg.FF == CAN_EXTENDTED_FRAME_FORMAT  ? "extended" : "standard",
              tx_msg.RTR == CAN_DATA_FRAME ? "data"     : "remote",
              tx_msg.DLC, tx_msg.ID);
  for (int i = 0; i < tx_msg.DLC; ++i) {
    printf("  data%d: 0x%02x\n", i, tx_msg.Data[i]);
  }

  CAN_Transmit(CAN0, &tx_msg);
}

void TestCanTx()
{
  uint32_t can_id = random();
  CAN_FrameFormatTypeDef ff = (random() & 1) ? CAN_EXTENDTED_FRAME_FORMAT : CAN_STANDARD_FRAME_FORMAT;
  CAN_RemoteTypeDef rtr = (random() % 4 > 0) ? CAN_DATA_FRAME : CAN_REMOTE_FRAME;
  CAN_DataLengthTypeDef dlc = (rtr == CAN_DATA_FRAME) ? (random() % 9) : 0;
  uint64_t data_bytes = ((uint64_t)random() << 32) | random();
  CanTx(can_id, ff, rtr, dlc, (const char *)&data_bytes);
}

void CAN0_isr()
{
  uint32_t can_ir = CAN_GetIntStatus(CAN0);
  if (can_ir & CAN_IR_TI) { // Tx done
    printf("can tx done\n");
  }
  if (can_ir & CAN_IR_RI) { // Rx done
    CAN_RxMessageTypeDef rx_msg;
    GPIO_Toggle(EXT_GPIO, 0x04);
    CAN_Receive(CAN0, &rx_msg);
    if (rx_msg.DLC == 2 && rx_msg.Data[0] == can_data_bytes0[0] && rx_msg.Data[1] == can_data_bytes0[1]) {
      EXT_GPIO->GpioDATA[0x06] = 4;
    }
    if (rx_msg.DLC == 2 && rx_msg.Data[0] == can_data_bytes1[0] && rx_msg.Data[1] == can_data_bytes1[1]) {
      EXT_GPIO->GpioDATA[0x06] = 2;
    }
    printf("can rx %s %s, dlc: %d, id: 0x%x\n",
                rx_msg.FF == CAN_EXTENDTED_FRAME_FORMAT  ? "extended" : "standard",
                rx_msg.RTR == CAN_DATA_FRAME ? "data"     : "remote",
                rx_msg.DLC, rx_msg.ID);
    for (int i = 0; i < rx_msg.DLC; ++i) {
      printf("  data%d: 0x%02x\n", i, rx_msg.Data[i]);
    }
  }
}

void TestCan()
{
  bool success = true;

  uint32_t can_id = 0x12345678;
  CAN_FrameFormatTypeDef frame_format = CAN_EXTENDTED_FRAME_FORMAT;
  int baud_rate = 1000000;

  PERIPHERAL_ENABLE(CAN, 0);
  INT_EnableIRQ(CAN0_IRQn, CAN_PRIORITY);
  // Press button to send TX data
  button_isr_cb = TestCanTx;

  CAN_InitTypeDef init;
  CAN_StructInit(&init);
  init.SJW = CAN_SJW_1TQ;
  init.TSeg1 = CAN_TSEG1_6TQ;
  init.TSeg2 = CAN_TSEG2_3TQ;
  init.Prescaler = CAN_CalculatePrescaler(SYS_GetPclkFreq(), baud_rate, init.TSeg1, init.TSeg2);

  // Varies ways to set the acceptance filter. Must set the filters based on frame format (standard or extended).
  if (frame_format == CAN_STANDARD_FRAME_FORMAT) {
    CAN_SetStandardSingleFilter(&init.FilterConfig, CAN_FILTER_DONT_CARE, 0x100, CAN_FILTER_EXACT, 0x1234, CAN_FILTER_EXACT, CAN_DATA_FRAME);
    CAN_SetStandardDualFilter(&init.FilterConfig, CAN_FILTER_DONT_CARE, 0x105, CAN_FILTER_EXACT, 0xc3, CAN_FILTER_EXACT, CAN_DATA_FRAME,
                            CAN_FILTER_EXACT, 0x138, CAN_FILTER_DONT_CARE, 0x0);
  } else {
    CAN_SetExtendedSingleFilter(&init.FilterConfig, 0xffff, 0x1234, CAN_FILTER_EXACT, CAN_DATA_FRAME);
    CAN_SetExtendedDualFilter(&init.FilterConfig, CAN_FILTER_EXACT, 0x1357, 0x0fffffff, 0x0);
  }

  CAN_Init(CAN0, &init);
  CAN_EnableIntRx(CAN0);
  CAN_EnableIntTx(CAN0);
  CAN_EnableIntErrorWarning(CAN0);

  printf("Can baud rate: %d with prescaler %d, SEG1/2: %dTQ/%dTQ\n", CAN_CalculateBaudRate(SYS_GetPclkFreq(), init.Prescaler, init.TSeg1, init.TSeg2),
         init.Prescaler + 1, (init.TSeg1 >> CAN_BTR1_TSEG1_OFFSET) + 1, (init.TSeg2 >> CAN_BTR1_TSEG2_OFFSET) + 1);

  CanTx(can_id, frame_format, CAN_DATA_FRAME, CAN_DATA_LENGTH_8, "test can");
  CAN_WaitForTx(CAN0);

  printf("  SR: %x\n", CAN0->SR);
  printf("  IR: %x\n", CAN0->IR);
  printf("  TXERR: %x\n", CAN0->TXERR);
  printf("  RXERR: %x\n", CAN0->RXERR);

  printf("Can test %s!\n", success ? "passed" : "failed");
}
