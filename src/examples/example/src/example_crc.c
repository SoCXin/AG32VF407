#include "example.h"

void CrcInit(uint32_t init, uint32_t poly)
{
  CRC_SetInitData(CRC0, init);
  CRC_SetPolyCoef(CRC0, poly);
}

void CrcFeedData32(int count)
{
  for (int i = 0; i < count; ++i) {
    uint32_t data = random();
    CRC_FeedData32(CRC0, data);
  }
}

bool TestCrc32()
{
  bool success = true;
  uint32_t init = random();
  uint32_t poly = random();
  CrcInit(init, poly);
  CrcFeedData32(256);
  printf("CRC init: 0x%08x, poly: 0x%08x, value: 0x%08x\n", init, poly, CRC_ReadData32(CRC0));

  // Now use default init
  CRC_Reset(CRC0);
  init = CRC_GetInitData(CRC0);
  CrcFeedData32(256);
  printf("CRC init: 0x%08x, poly: 0x%08x, value: 0x%08x\n", init, poly, CRC_ReadData32(CRC0));
  
  // Now use default init and poly
  SYS_AHBReset(AHB_MASK_CRC0);
  init = CRC_GetInitData(CRC0);
  poly = CRC_GetPolyCoef(CRC0);
  CrcFeedData32(256);
  printf("CRC init: 0x%08x, poly: 0x%08x, value: 0x%08x\n", init, poly, CRC_ReadData32(CRC0));

  CRC_Reset(CRC0);
  CRC_FeedData8(CRC0, 0x11);
  CRC_FeedData8(CRC0, 0x22);
  CRC_FeedData8(CRC0, 0x33);
  CRC_FeedData8(CRC0, 0x44);
  printf("CRC with 4 bytes: 0x%08x\n", CRC_ReadData32(CRC0));

  CRC_Reset(CRC0);
  CRC_SetEndian(CRC0, CRC_CR_BIG_ENDIAN); // This is the default
  CRC_FeedData32(CRC0, 0x11223344);
  printf("CRC big endian: 0x%08x\n", CRC_ReadData32(CRC0));

  CRC_Reset(CRC0);
  CRC_SetEndian(CRC0, CRC_CR_LITTLE_ENDIAN);
  CRC_FeedData32(CRC0, 0x44332211);
  printf("CRC little endian: 0x%08x\n", CRC_ReadData32(CRC0));

  return success;
}

void TestCrc()
{
  SYS_EnableAHBClock(AHB_MASK_CRC0);

  bool success = TestCrc32();

  printf("CRC test %s!\n", success ? "passed" : "failed");
}
