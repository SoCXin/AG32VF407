#include "example.h"

void TestGpio()
{
  printf("Testing gpio\n");
  int counter = 0;
  while (1) {
    UTIL_IdleUs(100e3);
    GPIO_Toggle(EXT_GPIO, EXT_GPIO_BITS);
  }
}

