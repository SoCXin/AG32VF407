#include "example.h"

void GPTIMER3_isr()
{
  GPIO_Toggle(LED_GPIO, LED_GPIO_BITS);
  GPTIMER_ClearFlagUpdate(GPTIMER3);
  GPTIMER_EnableCounter(GPTIMER3);
}

#define T1_ON  80
#define T1_OFF 319
#define T2_ON  850
#define T2_OFF 149
#define T3_ON  200
#define T3_OFF 199

// Use global buffer and lli so that dma can keep running
uint32_t const gpt_buffer[12] = { T1_ON + T1_OFF, 0, T1_ON, T1_ON, T2_ON + T2_OFF, 0, T2_ON, T2_ON, T3_ON + T3_OFF, 2, T3_ON, T3_ON };
DMAC_LLI_TypeDef dma_lli[3];

void TestGpTimerDma()
{
  // Use GPTIMER and DMA to generate arbitrary waveform
  SYS_EnableAHBClock(AHB_MASK_DMAC0);
  DMAC_Init();

  // With burst size 4, DMA write includes ARR, RCR, CCR0, and CCR1
  dma_lli[0].SrcAddr = (uint32_t)gpt_buffer;
  dma_lli[0].DstAddr = (uint32_t)&GPTIMER1->ARR;
  dma_lli[0].LLI     = (uint32_t)&dma_lli[1];
  dma_lli[1].SrcAddr = (uint32_t)gpt_buffer + 4 * 4;
  dma_lli[1].DstAddr = (uint32_t)&GPTIMER1->ARR;
  dma_lli[1].LLI     = (uint32_t)&dma_lli[2];
  dma_lli[2].SrcAddr = (uint32_t)gpt_buffer + 4 * 8;
  dma_lli[2].DstAddr = (uint32_t)&GPTIMER1->ARR;
  dma_lli[2].LLI     = (uint32_t)&dma_lli[0];
  dma_lli[0].Control = DMAC_MakeControl(DMAC_ADDR_INCR_ON, DMAC_ADDR_INCR_ON, DMAC_WIDTH_32_BIT,
                                        DMAC_WIDTH_32_BIT, DMAC_BURST_4, DMAC_BURST_4, 0, DISABLE);
  dma_lli[1].Control = dma_lli[0].Control;
  dma_lli[2].Control = dma_lli[0].Control;

  DMAC_ConfigLLI(DMAC_CHANNEL5, DMAC_MEM_TO_PERIPHERAL_PERIPHERAL_CTRL, 0, GPTIMER1_UPDATE_DMA_REQ, (uint32_t)dma_lli);

  GPIO_AF_ENABLE(GPTIMER1_CH0);

  SYS_EnableAPBClock(APB_MASK_GPTIMER1);
  GPTIMER_InitTypeDef tm_init;
  GPTIMER_StructInit(&tm_init);
  tm_init.Autoreload = 0xFFFF;
  GPTIMER_Init(GPTIMER1, &tm_init);

  GPTIMER_OC_InitTypeDef oc_init;
  GPTIMER_OC_StructInit(&oc_init);
  oc_init.OCState = GPTIMER_OCSTATE_ENABLE;
  oc_init.OCMode = GPTIMER_OCMODE_PWM1;
  GPTIMER_OC_Init(GPTIMER1, GPTIMER_CHANNEL_CH0, &oc_init);

  GPTIMER_OC_EnablePreload(GPTIMER1, GPTIMER_CHANNEL_CH0);
  GPTIMER_EnableARRPreload(GPTIMER1);
  GPTIMER_EnableDmaUpdate(GPTIMER1);
  GPTIMER_EnableDmaCC1(GPTIMER1);
  GPTIMER_EnableAllOutputs(GPTIMER1);
  GPTIMER_EnableCounter(GPTIMER1);
  GPTIMER_GenerateEventUpdate(GPTIMER1); /* Enable UEV by setting UG bit to Load buffer data into preload registers */
  GPTIMER_GenerateEventUpdate(GPTIMER1); /* Enable UEV by setting UG bit to load data from preload to active registers */
}

void TestGpTimer()
{
  SYS_EnableAPBClock(APB_MASK_GPTIMER3);
  GPTIMER_InitTypeDef tm_init;
  GPTIMER_StructInit(&tm_init);
  tm_init.Autoreload = 2e6;
  tm_init.Prescaler = 100;
  GPTIMER_Init(GPTIMER3, &tm_init);
  GPTIMER_SetOnePulseMode(GPTIMER3, GPTIMER_ONEPULSEMODE_SINGLE);
  GPTIMER_EnableCounter(GPTIMER3);

  INT_EnableIRQ(GPTIMER3_IRQn, TIMER_PRIORITY);
  GPTIMER_EnableIntUpdate(GPTIMER3);

  TestGpTimerDma();

  while(1);
}

void TestGpTimerPwm()
{
  SYS_EnableAPBClock(APB_MASK_GPTIMER4);
  GPTIMER_InitTypeDef tm_init;
  GPTIMER_StructInit(&tm_init);
  const uint32_t frequency = 10000; // In Hz
  const float pwm_ratio = 0.3;
  tm_init.Autoreload = SYS_GetPclkFreq() / frequency;
  GPTIMER_Init(GPTIMER4, &tm_init);

  GPTIMER_OC_InitTypeDef oc_init;
  oc_init.OCState = GPTIMER_OCSTATE_ENABLE;
  oc_init.OCMode = GPTIMER_OCMODE_PWM1;
  oc_init.CompareValue = tm_init.Autoreload * pwm_ratio;
  GPTIMER_OC_Init(GPTIMER4, GPTIMER_CHANNEL_CH0, &oc_init);
  GPIO_AF_ENABLE(GPTIMER4_CH0);

  GPTIMER_EnableAllOutputs(GPTIMER4);
  GPTIMER_EnableCounter(GPTIMER4);
}
