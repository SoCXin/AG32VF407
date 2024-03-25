#ifdef IPS_ANALOG_IP
#include "example.h"
#include "analog_ip.h"
#include <math.h>

static uint32_t sclk_div = 9; // Divided by 20 = (9 + 1) * 2

void TestAdc(ADC_TypeDef *adc)
{
  printf("\nTesting ADC%d:\n", adc == ADC0 ? 0 : adc == ADC1 ? 1 : 2);
  for (int channel = ADC_CHANNEL0; channel <= ADC_CHANNEL15; ++channel) {
    ADC_SetChannel(adc, channel);
    ADC_Start(adc, sclk_div);
    ADC_WaitForEoc(adc);
    printf("  channel %d: 0x%03x\n", channel - ADC_CHANNEL0, ADC_GetData(adc));
  }
}

void TestDac(DAC_TypeDef *dac)
{
  printf("\nTesting DAC%d:\n", dac == DAC0 ? 0 : 1);
  // Use ADC0 to read back DAC output
  ADC_TypeDef *adc = ADC0;
  int channel = dac == DAC0 ? ADC_CHANNEL4 : ADC_CHANNEL5;
  DAC_Enable(dac);
  ADC_SetChannel(adc, channel);
  for (int i = 0; i < 1024; i += 64) {
    DAC_SetData(dac, i);
    UTIL_IdleUs(1);
    ADC_Start(adc, sclk_div);
    ADC_WaitForEoc(adc);
    uint32_t adc_data = ADC_GetData(adc);
    printf("DAC: %4d, ADC: %4d, %4d, %.1f%%\n", dac->DATA, adc_data, adc_data >> 2, 100 * ((float)(adc_data >> 2) / dac->DATA - 1));
  }
  DAC_Disable(dac);
}

void TestCmp(void)
{
  printf("\nTesting CMP0:\n");

  // Use DAC0 output in CMP channel 1 to compare with VREF/4, VREF/2, VREF * 3/4, VREF. Ideally CMP will toggle at 93, 186, 279, and 372.
  CMP_Enable1(CMP0);
  CMP_SetPsel1(CMP0, CMP_PSEL_CHNL2);
  DAC_Enable(DAC0);
  CMP_MselChnlTypeDef msel[] = { CMP_MSEL_CHNL4, CMP_MSEL_CHNL5, CMP_MSEL_CHNL6, CMP_MSEL_CHNL7 };
  for (int c = 0; c < sizeof(msel)/sizeof(CMP_MselChnlTypeDef); ++c) {
    CMP_SetMsel1(CMP0, msel[c]);
    printf("  M channel %d:\n", msel[c]);
    for (int i = 0; i < 1024; ++i) {
      DAC_SetData(DAC0, i);
      UTIL_IdleUs(1);
      if (CMP_GetData1(CMP0)) {
        printf("CMP out1 toogles at %d\n", i);
        break;
      }
    }
  }
  DAC_Disable(DAC0);
}

// Use global variables as linked list item so that DMA can continue to function
static DMAC_LLI_TypeDef dac_lli[2];
#define WAVE_TABLE_SIZE 360
static uint32_t wave_table[WAVE_TABLE_SIZE];
static uint32_t adc_table[WAVE_TABLE_SIZE * 2];
void TestDacAdc()
{
  printf("\nTesting DAC to ADC\n");
  const float rad = 3.14159265359 * 2 / WAVE_TABLE_SIZE;
  for (int i = 0; i < WAVE_TABLE_SIZE; ++i) {
    wave_table[i] = (1 + sinf(i * rad)) / 2 * 1023;
  }

  PERIPHERAL_ENABLE(DMAC, 0);
  DMAC_Init();
  for (int i = 0; i < 2; ++i) {
    DAC_TypeDef *dac = i == 0 ? DAC0 : DAC1;
    dac_lli[i].SrcAddr = (uint32_t)wave_table;
    dac_lli[i].DstAddr = (uint32_t)&dac->DATA;
    dac_lli[i].LLI     = (uint32_t)&dac_lli[i];
    dac_lli[i].Control = DMAC_MakeControl(DMAC_ADDR_INCR_ON, DMAC_ADDR_INCR_OFF, DMAC_WIDTH_32_BIT,
                                          DMAC_WIDTH_32_BIT, DMAC_BURST_1, DMAC_BURST_1, WAVE_TABLE_SIZE, DISABLE);
    DAC_Enable(dac);
    DMAC_ConfigLLI(DMAC_CHANNEL0 + i, DMAC_MEM_TO_PERIPHERAL_DMA_CTRL, 0, i == 0 ? DAC0_DMA_REQ : DAC1_DMA_REQ, (uint32_t)&dac_lli[i]);
    DAC_EnableDma(dac, (sclk_div + 1) * 4 * 13 - 1);
  }

  // Use ADC0 to sample both DAC0 and DAC1
  ADC_SetSeqLength(ADC0, ADC_SEQ_LENGTH2); // Scan 2 channels
  ADC_SetSeqChannel(ADC0, 0, ADC_CHANNEL4); // Output from DAC0
  ADC_SetSeqChannel(ADC0, 1, ADC_CHANNEL5); // Output from DAC1

  DMAC_Config(DMAC_CHANNEL2, (uint32_t)&ADC0->DATA, (uint32_t)adc_table, DMAC_ADDR_INCR_OFF, DMAC_ADDR_INCR_ON,
              DMAC_WIDTH_32_BIT, DMAC_WIDTH_32_BIT, DMAC_BURST_1, DMAC_BURST_1, WAVE_TABLE_SIZE * 2,
              DMAC_PERIPHERAL_TO_MEM_DMA_CTRL, ADC0_DMA_REQ, 0);
  ADC_StartDma(ADC0, sclk_div);
  DMAC_WaitChannel(DMAC_CHANNEL2);
  ADC_Stop(ADC0);
  printf("ADC DMA done\n");

  // Use sampled data from ADC0 to drive DAC0
  for (int i = 0; i < WAVE_TABLE_SIZE ; ++i) {
    adc_table[i] = adc_table[i * 2] >> 2;
  }
  DMAC_DisableChannel(DMAC_CHANNEL0);
  dac_lli[0].SrcAddr = (uint32_t)adc_table;
  DMAC_EnableChannel(DMAC_CHANNEL0);
}

void TestAnalog(void)
{
  TestAdc(ADC0);
  TestAdc(ADC1);
  TestAdc(ADC2);

  TestDac(DAC0);
  TestDac(DAC1);

  TestCmp();

  TestDacAdc();
}

#endif
