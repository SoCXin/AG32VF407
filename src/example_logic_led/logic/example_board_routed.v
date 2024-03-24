`timescale 1 ps/ 1 ps

module top(
	PIN_31,
	PIN_32,
	PIN_HSE,
	PIN_HSI,
	PIN_OSC);
output	PIN_31;
output	PIN_32;
input	PIN_HSE;
input	PIN_HSI;
input	PIN_OSC;

//wire	gnd;
//wire	vcc;
wire	AsyncReset_X49_Y1_GND;
wire	AsyncReset_X49_Y2_GND;
wire	\PIN_HSE~input_o ;
wire	\PIN_HSI~input_o ;
wire	\PIN_OSC~input_o ;
wire	\PLL_ENABLE~clkctrl_outclk ;
wire	\PLL_ENABLE~clkctrl_outclk__AsyncReset_X49_Y2_SIG ;
wire	\PLL_ENABLE~combout ;
wire	\PLL_LOCK~combout ;
wire	\auto_generated_inst.hbo_13_e9fbadbe8ee04947_bp ;
wire	\auto_generated_inst.hbo_13_e9fbadbe8ee04947_bp_X49_Y2_SIG_VCC ;
wire	\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp ;
wire	\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y1_SIG_VCC ;
wire	\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y2_SIG_VCC ;
tri1	devclrn;
tri1	devoe;
tri1	devpor;
wire	[3:0] ext_dma_DMACBREQ;
//wire	ext_dma_DMACBREQ[0];
//wire	ext_dma_DMACBREQ[1];
//wire	ext_dma_DMACBREQ[2];
//wire	ext_dma_DMACBREQ[3];
wire	[3:0] ext_dma_DMACLBREQ;
//wire	ext_dma_DMACLBREQ[0];
//wire	ext_dma_DMACLBREQ[1];
//wire	ext_dma_DMACLBREQ[2];
//wire	ext_dma_DMACLBREQ[3];
wire	[3:0] ext_dma_DMACLSREQ;
//wire	ext_dma_DMACLSREQ[0];
//wire	ext_dma_DMACLSREQ[1];
//wire	ext_dma_DMACLSREQ[2];
//wire	ext_dma_DMACLSREQ[3];
wire	[3:0] ext_dma_DMACSREQ;
//wire	ext_dma_DMACSREQ[0];
//wire	ext_dma_DMACSREQ[1];
//wire	ext_dma_DMACSREQ[2];
//wire	ext_dma_DMACSREQ[3];
wire	\gclksw_inst|gclk_switch__alta_gclksw__clkout ;
wire	[7:0] gpio0_io_in;
//wire	gpio0_io_in[0];
//wire	gpio0_io_in[1];
//wire	gpio0_io_in[2];
//wire	gpio0_io_in[3];
//wire	gpio0_io_in[4];
//wire	gpio0_io_in[5];
//wire	gpio0_io_in[6];
//wire	gpio0_io_in[7];
wire	[7:0] gpio1_io_in;
//wire	gpio1_io_in[0];
//wire	gpio1_io_in[1];
//wire	gpio1_io_in[2];
//wire	gpio1_io_in[3];
//wire	gpio1_io_in[4];
//wire	gpio1_io_in[5];
//wire	gpio1_io_in[6];
//wire	gpio1_io_in[7];
wire	[7:0] gpio2_io_in;
//wire	gpio2_io_in[0];
//wire	gpio2_io_in[1];
//wire	gpio2_io_in[2];
//wire	gpio2_io_in[3];
//wire	gpio2_io_in[4];
//wire	gpio2_io_in[5];
//wire	gpio2_io_in[6];
//wire	gpio2_io_in[7];
wire	[7:0] gpio3_io_in;
//wire	gpio3_io_in[0];
//wire	gpio3_io_in[1];
//wire	gpio3_io_in[2];
//wire	gpio3_io_in[3];
//wire	gpio3_io_in[4];
//wire	gpio3_io_in[5];
//wire	gpio3_io_in[6];
//wire	gpio3_io_in[7];
wire	[7:0] gpio4_io_in;
//wire	gpio4_io_in[0];
//wire	gpio4_io_in[1];
//wire	gpio4_io_in[2];
//wire	gpio4_io_in[3];
//wire	gpio4_io_in[4];
//wire	gpio4_io_in[5];
//wire	gpio4_io_in[6];
//wire	gpio4_io_in[7];
wire	[7:0] gpio5_io_in;
//wire	gpio5_io_in[0];
//wire	gpio5_io_in[1];
//wire	gpio5_io_in[2];
//wire	gpio5_io_in[3];
//wire	gpio5_io_in[4];
//wire	gpio5_io_in[5];
//wire	gpio5_io_in[6];
//wire	gpio5_io_in[7];
wire	[7:0] gpio6_io_in;
//wire	gpio6_io_in[0];
//wire	gpio6_io_in[1];
//wire	gpio6_io_in[2];
//wire	gpio6_io_in[3];
//wire	gpio6_io_in[4];
//wire	gpio6_io_in[5];
//wire	gpio6_io_in[6];
//wire	gpio6_io_in[7];
wire	[7:0] gpio7_io_in;
//wire	gpio7_io_in[0];
//wire	gpio7_io_in[1];
//wire	gpio7_io_in[2];
//wire	gpio7_io_in[3];
//wire	gpio7_io_in[4];
//wire	gpio7_io_in[5];
//wire	gpio7_io_in[6];
//wire	gpio7_io_in[7];
wire	[7:0] gpio8_io_in;
//wire	gpio8_io_in[0];
//wire	gpio8_io_in[1];
//wire	gpio8_io_in[2];
//wire	gpio8_io_in[3];
//wire	gpio8_io_in[4];
//wire	gpio8_io_in[5];
//wire	gpio8_io_in[6];
//wire	gpio8_io_in[7];
wire	[7:0] gpio9_io_in;
//wire	gpio9_io_in[0];
//wire	gpio9_io_in[1];
//wire	gpio9_io_in[2];
//wire	gpio9_io_in[3];
//wire	gpio9_io_in[4];
//wire	gpio9_io_in[5];
//wire	gpio9_io_in[6];
//wire	gpio9_io_in[7];
wire	hbi_272_0_9cb2c0024f9919c5_bp;
wire	hbi_272_1_9cb2c0024f9919c5_bp;
wire	[3:0] local_int;
//wire	local_int[0];
//wire	local_int[1];
//wire	local_int[2];
//wire	local_int[3];
wire	\macro_inst|led_output|LED_2~0_combout ;
wire	\macro_inst|led_output|LED_2~q ;
wire	\macro_inst|led_output|LED_3~0_combout ;
wire	\macro_inst|led_output|LED_3~q ;
wire	[31:0] \macro_inst|led_output|clkcount ;
//wire	\macro_inst|led_output|clkcount [0];
wire	\macro_inst|led_output|clkcount[0]~72_combout ;
//wire	\macro_inst|led_output|clkcount [10];
wire	\macro_inst|led_output|clkcount[10]~42_combout ;
wire	\macro_inst|led_output|clkcount[10]~43 ;
//wire	\macro_inst|led_output|clkcount [11];
wire	\macro_inst|led_output|clkcount[11]~44_combout ;
wire	\macro_inst|led_output|clkcount[11]~45 ;
//wire	\macro_inst|led_output|clkcount [12];
wire	\macro_inst|led_output|clkcount[12]~46_combout ;
wire	\macro_inst|led_output|clkcount[12]~47 ;
//wire	\macro_inst|led_output|clkcount [13];
wire	\macro_inst|led_output|clkcount[13]~48_combout ;
wire	\macro_inst|led_output|clkcount[13]~49 ;
//wire	\macro_inst|led_output|clkcount [14];
wire	\macro_inst|led_output|clkcount[14]~50_combout ;
wire	\macro_inst|led_output|clkcount[14]~51 ;
//wire	\macro_inst|led_output|clkcount [15];
wire	\macro_inst|led_output|clkcount[15]~52_combout ;
wire	\macro_inst|led_output|clkcount[15]~53 ;
//wire	\macro_inst|led_output|clkcount [16];
wire	\macro_inst|led_output|clkcount[16]~54_combout ;
wire	\macro_inst|led_output|clkcount[16]~55 ;
//wire	\macro_inst|led_output|clkcount [17];
wire	\macro_inst|led_output|clkcount[17]~56_combout ;
wire	\macro_inst|led_output|clkcount[17]~57 ;
//wire	\macro_inst|led_output|clkcount [18];
wire	\macro_inst|led_output|clkcount[18]~58_combout ;
wire	\macro_inst|led_output|clkcount[18]~59 ;
//wire	\macro_inst|led_output|clkcount [19];
wire	\macro_inst|led_output|clkcount[19]~60_combout ;
wire	\macro_inst|led_output|clkcount[19]~61 ;
//wire	\macro_inst|led_output|clkcount [1];
wire	\macro_inst|led_output|clkcount[1]~24_combout ;
wire	\macro_inst|led_output|clkcount[1]~25 ;
//wire	\macro_inst|led_output|clkcount [20];
wire	\macro_inst|led_output|clkcount[20]~62_combout ;
wire	\macro_inst|led_output|clkcount[20]~63 ;
//wire	\macro_inst|led_output|clkcount [21];
wire	\macro_inst|led_output|clkcount[21]~64_combout ;
wire	\macro_inst|led_output|clkcount[21]~65 ;
//wire	\macro_inst|led_output|clkcount [22];
wire	\macro_inst|led_output|clkcount[22]~66_combout ;
wire	\macro_inst|led_output|clkcount[22]~67 ;
//wire	\macro_inst|led_output|clkcount [23];
wire	\macro_inst|led_output|clkcount[23]~68_combout ;
wire	\macro_inst|led_output|clkcount[23]~69 ;
//wire	\macro_inst|led_output|clkcount [24];
wire	\macro_inst|led_output|clkcount[24]~70_combout ;
//wire	\macro_inst|led_output|clkcount [25];
//wire	\macro_inst|led_output|clkcount [26];
//wire	\macro_inst|led_output|clkcount [27];
//wire	\macro_inst|led_output|clkcount [28];
//wire	\macro_inst|led_output|clkcount [29];
//wire	\macro_inst|led_output|clkcount [2];
wire	\macro_inst|led_output|clkcount[2]~26_combout ;
wire	\macro_inst|led_output|clkcount[2]~27 ;
//wire	\macro_inst|led_output|clkcount [30];
//wire	\macro_inst|led_output|clkcount [31];
//wire	\macro_inst|led_output|clkcount [3];
wire	\macro_inst|led_output|clkcount[3]~28_combout ;
wire	\macro_inst|led_output|clkcount[3]~29 ;
//wire	\macro_inst|led_output|clkcount [4];
wire	\macro_inst|led_output|clkcount[4]~30_combout ;
wire	\macro_inst|led_output|clkcount[4]~31 ;
//wire	\macro_inst|led_output|clkcount [5];
wire	\macro_inst|led_output|clkcount[5]~32_combout ;
wire	\macro_inst|led_output|clkcount[5]~33 ;
//wire	\macro_inst|led_output|clkcount [6];
wire	\macro_inst|led_output|clkcount[6]~34_combout ;
wire	\macro_inst|led_output|clkcount[6]~35 ;
//wire	\macro_inst|led_output|clkcount [7];
wire	\macro_inst|led_output|clkcount[7]~36_combout ;
wire	\macro_inst|led_output|clkcount[7]~37 ;
//wire	\macro_inst|led_output|clkcount [8];
wire	\macro_inst|led_output|clkcount[8]~38_combout ;
wire	\macro_inst|led_output|clkcount[8]~39 ;
//wire	\macro_inst|led_output|clkcount [9];
wire	\macro_inst|led_output|clkcount[9]~40_combout ;
wire	\macro_inst|led_output|clkcount[9]~41 ;
wire	[31:0] mem_ahb_hrdata;
//wire	mem_ahb_hrdata[0];
//wire	mem_ahb_hrdata[10];
//wire	mem_ahb_hrdata[11];
//wire	mem_ahb_hrdata[12];
//wire	mem_ahb_hrdata[13];
//wire	mem_ahb_hrdata[14];
//wire	mem_ahb_hrdata[15];
//wire	mem_ahb_hrdata[16];
//wire	mem_ahb_hrdata[17];
//wire	mem_ahb_hrdata[18];
//wire	mem_ahb_hrdata[19];
//wire	mem_ahb_hrdata[1];
//wire	mem_ahb_hrdata[20];
//wire	mem_ahb_hrdata[21];
//wire	mem_ahb_hrdata[22];
//wire	mem_ahb_hrdata[23];
//wire	mem_ahb_hrdata[24];
//wire	mem_ahb_hrdata[25];
//wire	mem_ahb_hrdata[26];
//wire	mem_ahb_hrdata[27];
//wire	mem_ahb_hrdata[28];
//wire	mem_ahb_hrdata[29];
//wire	mem_ahb_hrdata[2];
//wire	mem_ahb_hrdata[30];
//wire	mem_ahb_hrdata[31];
//wire	mem_ahb_hrdata[3];
//wire	mem_ahb_hrdata[4];
//wire	mem_ahb_hrdata[5];
//wire	mem_ahb_hrdata[6];
//wire	mem_ahb_hrdata[7];
//wire	mem_ahb_hrdata[8];
//wire	mem_ahb_hrdata[9];
wire	\mem_ahb_hreadyout~combout ;
wire	\mem_ahb_hresp~combout ;
wire	[4:0] \pll_inst|auto_generated|clk ;
//wire	\pll_inst|auto_generated|clk [0];
//wire	\pll_inst|auto_generated|clk [1];
//wire	\pll_inst|auto_generated|clk [2];
//wire	\pll_inst|auto_generated|clk [3];
//wire	\pll_inst|auto_generated|clk [4];
wire	[4:0] \pll_inst|auto_generated|pll1_CLK_bus ;
//wire	\pll_inst|auto_generated|pll1_CLK_bus [0];
//wire	\pll_inst|auto_generated|pll1_CLK_bus [1];
//wire	\pll_inst|auto_generated|pll1_CLK_bus [2];
//wire	\pll_inst|auto_generated|pll1_CLK_bus [3];
//wire	\pll_inst|auto_generated|pll1_CLK_bus [4];
wire	\pll_inst|auto_generated|pll1~FBOUT ;
wire	\pll_inst|auto_generated|pll_lock_sync~feeder_combout ;
wire	\pll_inst|auto_generated|pll_lock_sync~q ;
wire	\rv32.dmactive ;
wire	\rv32.ext_dma_DMACCLR[0] ;
wire	\rv32.ext_dma_DMACCLR[1] ;
wire	\rv32.ext_dma_DMACCLR[2] ;
wire	\rv32.ext_dma_DMACCLR[3] ;
wire	\rv32.ext_dma_DMACTC[0] ;
wire	\rv32.ext_dma_DMACTC[1] ;
wire	\rv32.ext_dma_DMACTC[2] ;
wire	\rv32.ext_dma_DMACTC[3] ;
wire	\rv32.gpio0_io_out_data[0] ;
wire	\rv32.gpio0_io_out_data[1] ;
wire	\rv32.gpio0_io_out_data[2] ;
wire	\rv32.gpio0_io_out_data[3] ;
wire	\rv32.gpio0_io_out_data[4] ;
wire	\rv32.gpio0_io_out_data[5] ;
wire	\rv32.gpio0_io_out_data[6] ;
wire	\rv32.gpio0_io_out_data[7] ;
wire	\rv32.gpio0_io_out_en[0] ;
wire	\rv32.gpio0_io_out_en[1] ;
wire	\rv32.gpio0_io_out_en[2] ;
wire	\rv32.gpio0_io_out_en[3] ;
wire	\rv32.gpio0_io_out_en[4] ;
wire	\rv32.gpio0_io_out_en[5] ;
wire	\rv32.gpio0_io_out_en[6] ;
wire	\rv32.gpio0_io_out_en[7] ;
wire	\rv32.gpio1_io_out_data[0] ;
wire	\rv32.gpio1_io_out_data[1] ;
wire	\rv32.gpio1_io_out_data[2] ;
wire	\rv32.gpio1_io_out_data[3] ;
wire	\rv32.gpio1_io_out_data[4] ;
wire	\rv32.gpio1_io_out_data[5] ;
wire	\rv32.gpio1_io_out_data[6] ;
wire	\rv32.gpio1_io_out_data[7] ;
wire	\rv32.gpio1_io_out_en[0] ;
wire	\rv32.gpio1_io_out_en[1] ;
wire	\rv32.gpio1_io_out_en[2] ;
wire	\rv32.gpio1_io_out_en[3] ;
wire	\rv32.gpio1_io_out_en[4] ;
wire	\rv32.gpio1_io_out_en[5] ;
wire	\rv32.gpio1_io_out_en[6] ;
wire	\rv32.gpio1_io_out_en[7] ;
wire	\rv32.gpio2_io_out_data[0] ;
wire	\rv32.gpio2_io_out_data[1] ;
wire	\rv32.gpio2_io_out_data[2] ;
wire	\rv32.gpio2_io_out_data[3] ;
wire	\rv32.gpio2_io_out_data[4] ;
wire	\rv32.gpio2_io_out_data[5] ;
wire	\rv32.gpio2_io_out_data[6] ;
wire	\rv32.gpio2_io_out_data[7] ;
wire	\rv32.gpio2_io_out_en[0] ;
wire	\rv32.gpio2_io_out_en[1] ;
wire	\rv32.gpio2_io_out_en[2] ;
wire	\rv32.gpio2_io_out_en[3] ;
wire	\rv32.gpio2_io_out_en[4] ;
wire	\rv32.gpio2_io_out_en[5] ;
wire	\rv32.gpio2_io_out_en[6] ;
wire	\rv32.gpio2_io_out_en[7] ;
wire	\rv32.gpio3_io_out_data[0] ;
wire	\rv32.gpio3_io_out_data[1] ;
wire	\rv32.gpio3_io_out_data[2] ;
wire	\rv32.gpio3_io_out_data[3] ;
wire	\rv32.gpio3_io_out_data[4] ;
wire	\rv32.gpio3_io_out_data[5] ;
wire	\rv32.gpio3_io_out_data[6] ;
wire	\rv32.gpio3_io_out_data[7] ;
wire	\rv32.gpio3_io_out_en[0] ;
wire	\rv32.gpio3_io_out_en[1] ;
wire	\rv32.gpio3_io_out_en[2] ;
wire	\rv32.gpio3_io_out_en[3] ;
wire	\rv32.gpio3_io_out_en[4] ;
wire	\rv32.gpio3_io_out_en[5] ;
wire	\rv32.gpio3_io_out_en[6] ;
wire	\rv32.gpio3_io_out_en[7] ;
wire	\rv32.gpio4_io_out_data[0] ;
wire	\rv32.gpio4_io_out_data[1] ;
wire	\rv32.gpio4_io_out_data[2] ;
wire	\rv32.gpio4_io_out_data[3] ;
wire	\rv32.gpio4_io_out_data[4] ;
wire	\rv32.gpio4_io_out_data[5] ;
wire	\rv32.gpio4_io_out_data[6] ;
wire	\rv32.gpio4_io_out_data[7] ;
wire	\rv32.gpio4_io_out_en[0] ;
wire	\rv32.gpio4_io_out_en[1] ;
wire	\rv32.gpio4_io_out_en[2] ;
wire	\rv32.gpio4_io_out_en[3] ;
wire	\rv32.gpio4_io_out_en[4] ;
wire	\rv32.gpio4_io_out_en[5] ;
wire	\rv32.gpio4_io_out_en[6] ;
wire	\rv32.gpio4_io_out_en[7] ;
wire	\rv32.gpio5_io_out_data[0] ;
wire	\rv32.gpio5_io_out_data[1] ;
wire	\rv32.gpio5_io_out_data[2] ;
wire	\rv32.gpio5_io_out_data[3] ;
wire	\rv32.gpio5_io_out_data[4] ;
wire	\rv32.gpio5_io_out_data[5] ;
wire	\rv32.gpio5_io_out_data[6] ;
wire	\rv32.gpio5_io_out_data[7] ;
wire	\rv32.gpio5_io_out_en[0] ;
wire	\rv32.gpio5_io_out_en[1] ;
wire	\rv32.gpio5_io_out_en[2] ;
wire	\rv32.gpio5_io_out_en[3] ;
wire	\rv32.gpio5_io_out_en[4] ;
wire	\rv32.gpio5_io_out_en[5] ;
wire	\rv32.gpio5_io_out_en[6] ;
wire	\rv32.gpio5_io_out_en[7] ;
wire	\rv32.gpio6_io_out_data[0] ;
wire	\rv32.gpio6_io_out_data[1] ;
wire	\rv32.gpio6_io_out_data[2] ;
wire	\rv32.gpio6_io_out_data[3] ;
wire	\rv32.gpio6_io_out_data[4] ;
wire	\rv32.gpio6_io_out_data[5] ;
wire	\rv32.gpio6_io_out_data[6] ;
wire	\rv32.gpio6_io_out_data[7] ;
wire	\rv32.gpio6_io_out_en[0] ;
wire	\rv32.gpio6_io_out_en[1] ;
wire	\rv32.gpio6_io_out_en[2] ;
wire	\rv32.gpio6_io_out_en[3] ;
wire	\rv32.gpio6_io_out_en[4] ;
wire	\rv32.gpio6_io_out_en[5] ;
wire	\rv32.gpio6_io_out_en[6] ;
wire	\rv32.gpio6_io_out_en[7] ;
wire	\rv32.gpio7_io_out_data[0] ;
wire	\rv32.gpio7_io_out_data[1] ;
wire	\rv32.gpio7_io_out_data[2] ;
wire	\rv32.gpio7_io_out_data[3] ;
wire	\rv32.gpio7_io_out_data[4] ;
wire	\rv32.gpio7_io_out_data[5] ;
wire	\rv32.gpio7_io_out_data[6] ;
wire	\rv32.gpio7_io_out_data[7] ;
wire	\rv32.gpio7_io_out_en[0] ;
wire	\rv32.gpio7_io_out_en[1] ;
wire	\rv32.gpio7_io_out_en[2] ;
wire	\rv32.gpio7_io_out_en[3] ;
wire	\rv32.gpio7_io_out_en[4] ;
wire	\rv32.gpio7_io_out_en[5] ;
wire	\rv32.gpio7_io_out_en[6] ;
wire	\rv32.gpio7_io_out_en[7] ;
wire	\rv32.gpio8_io_out_data[0] ;
wire	\rv32.gpio8_io_out_data[1] ;
wire	\rv32.gpio8_io_out_data[2] ;
wire	\rv32.gpio8_io_out_data[3] ;
wire	\rv32.gpio8_io_out_data[4] ;
wire	\rv32.gpio8_io_out_data[5] ;
wire	\rv32.gpio8_io_out_data[6] ;
wire	\rv32.gpio8_io_out_data[7] ;
wire	\rv32.gpio8_io_out_en[0] ;
wire	\rv32.gpio8_io_out_en[1] ;
wire	\rv32.gpio8_io_out_en[2] ;
wire	\rv32.gpio8_io_out_en[3] ;
wire	\rv32.gpio8_io_out_en[4] ;
wire	\rv32.gpio8_io_out_en[5] ;
wire	\rv32.gpio8_io_out_en[6] ;
wire	\rv32.gpio8_io_out_en[7] ;
wire	\rv32.gpio9_io_out_data[0] ;
wire	\rv32.gpio9_io_out_data[1] ;
wire	\rv32.gpio9_io_out_data[2] ;
wire	\rv32.gpio9_io_out_data[3] ;
wire	\rv32.gpio9_io_out_data[4] ;
wire	\rv32.gpio9_io_out_data[5] ;
wire	\rv32.gpio9_io_out_data[6] ;
wire	\rv32.gpio9_io_out_data[7] ;
wire	\rv32.gpio9_io_out_en[0] ;
wire	\rv32.gpio9_io_out_en[1] ;
wire	\rv32.gpio9_io_out_en[2] ;
wire	\rv32.gpio9_io_out_en[3] ;
wire	\rv32.gpio9_io_out_en[4] ;
wire	\rv32.gpio9_io_out_en[5] ;
wire	\rv32.gpio9_io_out_en[6] ;
wire	\rv32.gpio9_io_out_en[7] ;
wire	\rv32.mem_ahb_haddr[0] ;
wire	\rv32.mem_ahb_haddr[10] ;
wire	\rv32.mem_ahb_haddr[11] ;
wire	\rv32.mem_ahb_haddr[12] ;
wire	\rv32.mem_ahb_haddr[13] ;
wire	\rv32.mem_ahb_haddr[14] ;
wire	\rv32.mem_ahb_haddr[15] ;
wire	\rv32.mem_ahb_haddr[16] ;
wire	\rv32.mem_ahb_haddr[17] ;
wire	\rv32.mem_ahb_haddr[18] ;
wire	\rv32.mem_ahb_haddr[19] ;
wire	\rv32.mem_ahb_haddr[1] ;
wire	\rv32.mem_ahb_haddr[20] ;
wire	\rv32.mem_ahb_haddr[21] ;
wire	\rv32.mem_ahb_haddr[22] ;
wire	\rv32.mem_ahb_haddr[23] ;
wire	\rv32.mem_ahb_haddr[24] ;
wire	\rv32.mem_ahb_haddr[25] ;
wire	\rv32.mem_ahb_haddr[26] ;
wire	\rv32.mem_ahb_haddr[27] ;
wire	\rv32.mem_ahb_haddr[28] ;
wire	\rv32.mem_ahb_haddr[29] ;
wire	\rv32.mem_ahb_haddr[2] ;
wire	\rv32.mem_ahb_haddr[30] ;
wire	\rv32.mem_ahb_haddr[31] ;
wire	\rv32.mem_ahb_haddr[3] ;
wire	\rv32.mem_ahb_haddr[4] ;
wire	\rv32.mem_ahb_haddr[5] ;
wire	\rv32.mem_ahb_haddr[6] ;
wire	\rv32.mem_ahb_haddr[7] ;
wire	\rv32.mem_ahb_haddr[8] ;
wire	\rv32.mem_ahb_haddr[9] ;
wire	\rv32.mem_ahb_hburst[0] ;
wire	\rv32.mem_ahb_hburst[1] ;
wire	\rv32.mem_ahb_hburst[2] ;
wire	\rv32.mem_ahb_hready ;
wire	\rv32.mem_ahb_hsize[0] ;
wire	\rv32.mem_ahb_hsize[1] ;
wire	\rv32.mem_ahb_hsize[2] ;
wire	\rv32.mem_ahb_htrans[0] ;
wire	\rv32.mem_ahb_htrans[1] ;
wire	\rv32.mem_ahb_hwdata[0] ;
wire	\rv32.mem_ahb_hwdata[10] ;
wire	\rv32.mem_ahb_hwdata[11] ;
wire	\rv32.mem_ahb_hwdata[12] ;
wire	\rv32.mem_ahb_hwdata[13] ;
wire	\rv32.mem_ahb_hwdata[14] ;
wire	\rv32.mem_ahb_hwdata[15] ;
wire	\rv32.mem_ahb_hwdata[16] ;
wire	\rv32.mem_ahb_hwdata[17] ;
wire	\rv32.mem_ahb_hwdata[18] ;
wire	\rv32.mem_ahb_hwdata[19] ;
wire	\rv32.mem_ahb_hwdata[1] ;
wire	\rv32.mem_ahb_hwdata[20] ;
wire	\rv32.mem_ahb_hwdata[21] ;
wire	\rv32.mem_ahb_hwdata[22] ;
wire	\rv32.mem_ahb_hwdata[23] ;
wire	\rv32.mem_ahb_hwdata[24] ;
wire	\rv32.mem_ahb_hwdata[25] ;
wire	\rv32.mem_ahb_hwdata[26] ;
wire	\rv32.mem_ahb_hwdata[27] ;
wire	\rv32.mem_ahb_hwdata[28] ;
wire	\rv32.mem_ahb_hwdata[29] ;
wire	\rv32.mem_ahb_hwdata[2] ;
wire	\rv32.mem_ahb_hwdata[30] ;
wire	\rv32.mem_ahb_hwdata[31] ;
wire	\rv32.mem_ahb_hwdata[3] ;
wire	\rv32.mem_ahb_hwdata[4] ;
wire	\rv32.mem_ahb_hwdata[5] ;
wire	\rv32.mem_ahb_hwdata[6] ;
wire	\rv32.mem_ahb_hwdata[7] ;
wire	\rv32.mem_ahb_hwdata[8] ;
wire	\rv32.mem_ahb_hwdata[9] ;
wire	\rv32.mem_ahb_hwrite ;
wire	\rv32.resetn_out ;
wire	\rv32.slave_ahb_hrdata[0] ;
wire	\rv32.slave_ahb_hrdata[10] ;
wire	\rv32.slave_ahb_hrdata[11] ;
wire	\rv32.slave_ahb_hrdata[12] ;
wire	\rv32.slave_ahb_hrdata[13] ;
wire	\rv32.slave_ahb_hrdata[14] ;
wire	\rv32.slave_ahb_hrdata[15] ;
wire	\rv32.slave_ahb_hrdata[16] ;
wire	\rv32.slave_ahb_hrdata[17] ;
wire	\rv32.slave_ahb_hrdata[18] ;
wire	\rv32.slave_ahb_hrdata[19] ;
wire	\rv32.slave_ahb_hrdata[1] ;
wire	\rv32.slave_ahb_hrdata[20] ;
wire	\rv32.slave_ahb_hrdata[21] ;
wire	\rv32.slave_ahb_hrdata[22] ;
wire	\rv32.slave_ahb_hrdata[23] ;
wire	\rv32.slave_ahb_hrdata[24] ;
wire	\rv32.slave_ahb_hrdata[25] ;
wire	\rv32.slave_ahb_hrdata[26] ;
wire	\rv32.slave_ahb_hrdata[27] ;
wire	\rv32.slave_ahb_hrdata[28] ;
wire	\rv32.slave_ahb_hrdata[29] ;
wire	\rv32.slave_ahb_hrdata[2] ;
wire	\rv32.slave_ahb_hrdata[30] ;
wire	\rv32.slave_ahb_hrdata[31] ;
wire	\rv32.slave_ahb_hrdata[3] ;
wire	\rv32.slave_ahb_hrdata[4] ;
wire	\rv32.slave_ahb_hrdata[5] ;
wire	\rv32.slave_ahb_hrdata[6] ;
wire	\rv32.slave_ahb_hrdata[7] ;
wire	\rv32.slave_ahb_hrdata[8] ;
wire	\rv32.slave_ahb_hrdata[9] ;
wire	\rv32.slave_ahb_hreadyout ;
wire	\rv32.slave_ahb_hresp ;
wire	\rv32.swj_JTAGIR[0] ;
wire	\rv32.swj_JTAGIR[1] ;
wire	\rv32.swj_JTAGIR[2] ;
wire	\rv32.swj_JTAGIR[3] ;
wire	\rv32.swj_JTAGNSW ;
wire	\rv32.swj_JTAGSTATE[0] ;
wire	\rv32.swj_JTAGSTATE[1] ;
wire	\rv32.swj_JTAGSTATE[2] ;
wire	\rv32.swj_JTAGSTATE[3] ;
wire	\rv32.sys_ctrl_clkSource[0] ;
wire	\rv32.sys_ctrl_clkSource[1] ;
wire	\rv32.sys_ctrl_hseBypass ;
wire	\rv32.sys_ctrl_hseEnable ;
wire	\rv32.sys_ctrl_pllEnable ;
wire	\rv32.sys_ctrl_sleep ;
wire	\rv32.sys_ctrl_standby ;
wire	\rv32.sys_ctrl_stop ;
wire	[31:0] slave_ahb_haddr;
//wire	slave_ahb_haddr[0];
//wire	slave_ahb_haddr[10];
//wire	slave_ahb_haddr[11];
//wire	slave_ahb_haddr[12];
//wire	slave_ahb_haddr[13];
//wire	slave_ahb_haddr[14];
//wire	slave_ahb_haddr[15];
//wire	slave_ahb_haddr[16];
//wire	slave_ahb_haddr[17];
//wire	slave_ahb_haddr[18];
//wire	slave_ahb_haddr[19];
//wire	slave_ahb_haddr[1];
//wire	slave_ahb_haddr[20];
//wire	slave_ahb_haddr[21];
//wire	slave_ahb_haddr[22];
//wire	slave_ahb_haddr[23];
//wire	slave_ahb_haddr[24];
//wire	slave_ahb_haddr[25];
//wire	slave_ahb_haddr[26];
//wire	slave_ahb_haddr[27];
//wire	slave_ahb_haddr[28];
//wire	slave_ahb_haddr[29];
//wire	slave_ahb_haddr[2];
//wire	slave_ahb_haddr[30];
//wire	slave_ahb_haddr[31];
//wire	slave_ahb_haddr[3];
//wire	slave_ahb_haddr[4];
//wire	slave_ahb_haddr[5];
//wire	slave_ahb_haddr[6];
//wire	slave_ahb_haddr[7];
//wire	slave_ahb_haddr[8];
//wire	slave_ahb_haddr[9];
wire	[2:0] slave_ahb_hburst;
//wire	slave_ahb_hburst[0];
//wire	slave_ahb_hburst[1];
//wire	slave_ahb_hburst[2];
wire	\slave_ahb_hready~combout ;
wire	\slave_ahb_hsel~combout ;
wire	[2:0] slave_ahb_hsize;
//wire	slave_ahb_hsize[0];
//wire	slave_ahb_hsize[1];
//wire	slave_ahb_hsize[2];
wire	[1:0] slave_ahb_htrans;
//wire	slave_ahb_htrans[0];
//wire	slave_ahb_htrans[1];
wire	[31:0] slave_ahb_hwdata;
//wire	slave_ahb_hwdata[0];
//wire	slave_ahb_hwdata[10];
//wire	slave_ahb_hwdata[11];
//wire	slave_ahb_hwdata[12];
//wire	slave_ahb_hwdata[13];
//wire	slave_ahb_hwdata[14];
//wire	slave_ahb_hwdata[15];
//wire	slave_ahb_hwdata[16];
//wire	slave_ahb_hwdata[17];
//wire	slave_ahb_hwdata[18];
//wire	slave_ahb_hwdata[19];
//wire	slave_ahb_hwdata[1];
//wire	slave_ahb_hwdata[20];
//wire	slave_ahb_hwdata[21];
//wire	slave_ahb_hwdata[22];
//wire	slave_ahb_hwdata[23];
//wire	slave_ahb_hwdata[24];
//wire	slave_ahb_hwdata[25];
//wire	slave_ahb_hwdata[26];
//wire	slave_ahb_hwdata[27];
//wire	slave_ahb_hwdata[28];
//wire	slave_ahb_hwdata[29];
//wire	slave_ahb_hwdata[2];
//wire	slave_ahb_hwdata[30];
//wire	slave_ahb_hwdata[31];
//wire	slave_ahb_hwdata[3];
//wire	slave_ahb_hwdata[4];
//wire	slave_ahb_hwdata[5];
//wire	slave_ahb_hwdata[6];
//wire	slave_ahb_hwdata[7];
//wire	slave_ahb_hwdata[8];
//wire	slave_ahb_hwdata[9];
wire	\slave_ahb_hwrite~combout ;
wire	unknown;
wire	\~GND~combout ;
wire	\~VCC~combout ;

wire vcc;
wire gnd;
assign vcc = 1'b1;
assign gnd = 1'b0;

alta_rio \PIN_31~output (
	.padio(PIN_31),
	.datain(\macro_inst|led_output|LED_2~q ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \PIN_31~output .coord_x = 19;
defparam \PIN_31~output .coord_y = 13;
defparam \PIN_31~output .coord_z = 0;
defparam \PIN_31~output .IN_ASYNC_MODE = 1'b0;
defparam \PIN_31~output .IN_SYNC_MODE = 1'b0;
defparam \PIN_31~output .IN_POWERUP = 1'b0;
defparam \PIN_31~output .OUT_REG_MODE = 1'b0;
defparam \PIN_31~output .OUT_ASYNC_MODE = 1'b0;
defparam \PIN_31~output .OUT_SYNC_MODE = 1'b0;
defparam \PIN_31~output .OUT_POWERUP = 1'b0;
defparam \PIN_31~output .OE_REG_MODE = 1'b0;
defparam \PIN_31~output .OE_ASYNC_MODE = 1'b0;
defparam \PIN_31~output .OE_SYNC_MODE = 1'b0;
defparam \PIN_31~output .OE_POWERUP = 1'b0;
defparam \PIN_31~output .CFG_TRI_INPUT = 1'b0;
defparam \PIN_31~output .CFG_INPUT_EN = 1'b0;
defparam \PIN_31~output .CFG_PULL_UP = 1'b0;
defparam \PIN_31~output .CFG_SLR = 1'b0;
defparam \PIN_31~output .CFG_OPEN_DRAIN = 1'b0;
defparam \PIN_31~output .CFG_PDRCTRL = 4'b0100;
defparam \PIN_31~output .CFG_KEEP = 2'b00;
defparam \PIN_31~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \PIN_31~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \PIN_31~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \PIN_31~output .CFG_LVDS_IN_EN = 1'b0;
defparam \PIN_31~output .DPCLK_DELAY = 4'b0000;
defparam \PIN_31~output .OUT_DELAY = 1'b0;
defparam \PIN_31~output .IN_DATA_DELAY = 3'b000;
defparam \PIN_31~output .IN_REG_DELAY = 3'b000;

alta_rio \PIN_32~output (
	.padio(PIN_32),
	.datain(\macro_inst|led_output|LED_3~q ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \PIN_32~output .coord_x = 18;
defparam \PIN_32~output .coord_y = 13;
defparam \PIN_32~output .coord_z = 3;
defparam \PIN_32~output .IN_ASYNC_MODE = 1'b0;
defparam \PIN_32~output .IN_SYNC_MODE = 1'b0;
defparam \PIN_32~output .IN_POWERUP = 1'b0;
defparam \PIN_32~output .OUT_REG_MODE = 1'b0;
defparam \PIN_32~output .OUT_ASYNC_MODE = 1'b0;
defparam \PIN_32~output .OUT_SYNC_MODE = 1'b0;
defparam \PIN_32~output .OUT_POWERUP = 1'b0;
defparam \PIN_32~output .OE_REG_MODE = 1'b0;
defparam \PIN_32~output .OE_ASYNC_MODE = 1'b0;
defparam \PIN_32~output .OE_SYNC_MODE = 1'b0;
defparam \PIN_32~output .OE_POWERUP = 1'b0;
defparam \PIN_32~output .CFG_TRI_INPUT = 1'b0;
defparam \PIN_32~output .CFG_INPUT_EN = 1'b0;
defparam \PIN_32~output .CFG_PULL_UP = 1'b1;
defparam \PIN_32~output .CFG_SLR = 1'b0;
defparam \PIN_32~output .CFG_OPEN_DRAIN = 1'b0;
defparam \PIN_32~output .CFG_PDRCTRL = 4'b0100;
defparam \PIN_32~output .CFG_KEEP = 2'b00;
defparam \PIN_32~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \PIN_32~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \PIN_32~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \PIN_32~output .CFG_LVDS_IN_EN = 1'b0;
defparam \PIN_32~output .DPCLK_DELAY = 4'b0000;
defparam \PIN_32~output .OUT_DELAY = 1'b0;
defparam \PIN_32~output .IN_DATA_DELAY = 3'b000;
defparam \PIN_32~output .IN_REG_DELAY = 3'b000;

alta_rio \PIN_HSE~input (
	.padio(PIN_HSE),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\PIN_HSE~input_o ),
	.regout());
defparam \PIN_HSE~input .coord_x = 22;
defparam \PIN_HSE~input .coord_y = 4;
defparam \PIN_HSE~input .coord_z = 1;
defparam \PIN_HSE~input .IN_ASYNC_MODE = 1'b0;
defparam \PIN_HSE~input .IN_SYNC_MODE = 1'b0;
defparam \PIN_HSE~input .IN_POWERUP = 1'b0;
defparam \PIN_HSE~input .OUT_REG_MODE = 1'b0;
defparam \PIN_HSE~input .OUT_ASYNC_MODE = 1'b0;
defparam \PIN_HSE~input .OUT_SYNC_MODE = 1'b0;
defparam \PIN_HSE~input .OUT_POWERUP = 1'b0;
defparam \PIN_HSE~input .OE_REG_MODE = 1'b0;
defparam \PIN_HSE~input .OE_ASYNC_MODE = 1'b0;
defparam \PIN_HSE~input .OE_SYNC_MODE = 1'b0;
defparam \PIN_HSE~input .OE_POWERUP = 1'b0;
defparam \PIN_HSE~input .CFG_TRI_INPUT = 1'b0;
defparam \PIN_HSE~input .CFG_PULL_UP = 1'b0;
defparam \PIN_HSE~input .CFG_SLR = 1'b0;
defparam \PIN_HSE~input .CFG_OPEN_DRAIN = 1'b0;
defparam \PIN_HSE~input .CFG_PDRCTRL = 4'b0010;
defparam \PIN_HSE~input .CFG_KEEP = 2'b00;
defparam \PIN_HSE~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \PIN_HSE~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \PIN_HSE~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \PIN_HSE~input .CFG_LVDS_IN_EN = 1'b0;
defparam \PIN_HSE~input .DPCLK_DELAY = 4'b0000;
defparam \PIN_HSE~input .OUT_DELAY = 1'b0;
defparam \PIN_HSE~input .IN_DATA_DELAY = 3'b000;
defparam \PIN_HSE~input .IN_REG_DELAY = 3'b000;

alta_rio \PIN_HSI~input (
	.padio(PIN_HSI),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\PIN_HSI~input_o ),
	.regout());
defparam \PIN_HSI~input .coord_x = 22;
defparam \PIN_HSI~input .coord_y = 4;
defparam \PIN_HSI~input .coord_z = 0;
defparam \PIN_HSI~input .IN_ASYNC_MODE = 1'b0;
defparam \PIN_HSI~input .IN_SYNC_MODE = 1'b0;
defparam \PIN_HSI~input .IN_POWERUP = 1'b0;
defparam \PIN_HSI~input .OUT_REG_MODE = 1'b0;
defparam \PIN_HSI~input .OUT_ASYNC_MODE = 1'b0;
defparam \PIN_HSI~input .OUT_SYNC_MODE = 1'b0;
defparam \PIN_HSI~input .OUT_POWERUP = 1'b0;
defparam \PIN_HSI~input .OE_REG_MODE = 1'b0;
defparam \PIN_HSI~input .OE_ASYNC_MODE = 1'b0;
defparam \PIN_HSI~input .OE_SYNC_MODE = 1'b0;
defparam \PIN_HSI~input .OE_POWERUP = 1'b0;
defparam \PIN_HSI~input .CFG_TRI_INPUT = 1'b0;
defparam \PIN_HSI~input .CFG_PULL_UP = 1'b0;
defparam \PIN_HSI~input .CFG_SLR = 1'b0;
defparam \PIN_HSI~input .CFG_OPEN_DRAIN = 1'b0;
defparam \PIN_HSI~input .CFG_PDRCTRL = 4'b0010;
defparam \PIN_HSI~input .CFG_KEEP = 2'b00;
defparam \PIN_HSI~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \PIN_HSI~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \PIN_HSI~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \PIN_HSI~input .CFG_LVDS_IN_EN = 1'b0;
defparam \PIN_HSI~input .DPCLK_DELAY = 4'b0000;
defparam \PIN_HSI~input .OUT_DELAY = 1'b0;
defparam \PIN_HSI~input .IN_DATA_DELAY = 3'b000;
defparam \PIN_HSI~input .IN_REG_DELAY = 3'b000;

alta_rio \PIN_OSC~input (
	.padio(PIN_OSC),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\PIN_OSC~input_o ),
	.regout());
defparam \PIN_OSC~input .coord_x = 22;
defparam \PIN_OSC~input .coord_y = 4;
defparam \PIN_OSC~input .coord_z = 2;
defparam \PIN_OSC~input .IN_ASYNC_MODE = 1'b0;
defparam \PIN_OSC~input .IN_SYNC_MODE = 1'b0;
defparam \PIN_OSC~input .IN_POWERUP = 1'b0;
defparam \PIN_OSC~input .OUT_REG_MODE = 1'b0;
defparam \PIN_OSC~input .OUT_ASYNC_MODE = 1'b0;
defparam \PIN_OSC~input .OUT_SYNC_MODE = 1'b0;
defparam \PIN_OSC~input .OUT_POWERUP = 1'b0;
defparam \PIN_OSC~input .OE_REG_MODE = 1'b0;
defparam \PIN_OSC~input .OE_ASYNC_MODE = 1'b0;
defparam \PIN_OSC~input .OE_SYNC_MODE = 1'b0;
defparam \PIN_OSC~input .OE_POWERUP = 1'b0;
defparam \PIN_OSC~input .CFG_TRI_INPUT = 1'b0;
defparam \PIN_OSC~input .CFG_PULL_UP = 1'b0;
defparam \PIN_OSC~input .CFG_SLR = 1'b0;
defparam \PIN_OSC~input .CFG_OPEN_DRAIN = 1'b0;
defparam \PIN_OSC~input .CFG_PDRCTRL = 4'b0010;
defparam \PIN_OSC~input .CFG_KEEP = 2'b00;
defparam \PIN_OSC~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \PIN_OSC~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \PIN_OSC~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \PIN_OSC~input .CFG_LVDS_IN_EN = 1'b0;
defparam \PIN_OSC~input .DPCLK_DELAY = 4'b0000;
defparam \PIN_OSC~input .OUT_DELAY = 1'b0;
defparam \PIN_OSC~input .IN_DATA_DELAY = 3'b000;
defparam \PIN_OSC~input .IN_REG_DELAY = 3'b000;

alta_slice PLL_ENABLE(
	.A(\rv32.sys_ctrl_pllEnable ),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\PLL_ENABLE~combout ),
	.Cout(),
	.Q());
defparam PLL_ENABLE.coord_x = 19;
defparam PLL_ENABLE.coord_y = 4;
defparam PLL_ENABLE.coord_z = 0;
defparam PLL_ENABLE.mask = 16'h5555;
defparam PLL_ENABLE.modeMux = 1'b0;
defparam PLL_ENABLE.FeedbackMux = 1'b0;
defparam PLL_ENABLE.ShiftMux = 1'b0;
defparam PLL_ENABLE.BypassEn = 1'b0;
defparam PLL_ENABLE.CarryEnb = 1'b1;

alta_io_gclk \PLL_ENABLE~clkctrl (
	.inclk(\PLL_ENABLE~combout ),
	.outclk(\PLL_ENABLE~clkctrl_outclk ));
defparam \PLL_ENABLE~clkctrl .coord_x = 22;
defparam \PLL_ENABLE~clkctrl .coord_y = 4;
defparam \PLL_ENABLE~clkctrl .coord_z = 0;

alta_slice PLL_LOCK(
	.A(\auto_generated_inst.hbo_13_e9fbadbe8ee04947_bp ),
	.B(\pll_inst|auto_generated|pll_lock_sync~q ),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\PLL_LOCK~combout ),
	.Cout(),
	.Q());
defparam PLL_LOCK.coord_x = 19;
defparam PLL_LOCK.coord_y = 4;
defparam PLL_LOCK.coord_z = 2;
defparam PLL_LOCK.mask = 16'h8888;
defparam PLL_LOCK.modeMux = 1'b0;
defparam PLL_LOCK.FeedbackMux = 1'b0;
defparam PLL_LOCK.ShiftMux = 1'b0;
defparam PLL_LOCK.BypassEn = 1'b0;
defparam PLL_LOCK.CarryEnb = 1'b1;

alta_asyncctrl asyncreset_ctrl_X49_Y1_N0(
	.Din(),
	.Dout(AsyncReset_X49_Y1_GND));
defparam asyncreset_ctrl_X49_Y1_N0.coord_x = 19;
defparam asyncreset_ctrl_X49_Y1_N0.coord_y = 3;
defparam asyncreset_ctrl_X49_Y1_N0.coord_z = 0;
defparam asyncreset_ctrl_X49_Y1_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X49_Y2_N0(
	.Din(),
	.Dout(AsyncReset_X49_Y2_GND));
defparam asyncreset_ctrl_X49_Y2_N0.coord_x = 19;
defparam asyncreset_ctrl_X49_Y2_N0.coord_y = 4;
defparam asyncreset_ctrl_X49_Y2_N0.coord_z = 0;
defparam asyncreset_ctrl_X49_Y2_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X49_Y2_N1(
	.Din(\PLL_ENABLE~clkctrl_outclk ),
	.Dout(\PLL_ENABLE~clkctrl_outclk__AsyncReset_X49_Y2_SIG ));
defparam asyncreset_ctrl_X49_Y2_N1.coord_x = 19;
defparam asyncreset_ctrl_X49_Y2_N1.coord_y = 4;
defparam asyncreset_ctrl_X49_Y2_N1.coord_z = 1;
defparam asyncreset_ctrl_X49_Y2_N1.AsyncCtrlMux = 2'b10;

alta_clkenctrl clken_ctrl_X49_Y1_N0(
	.ClkIn(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp ),
	.ClkEn(),
	.ClkOut(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y1_SIG_VCC ));
defparam clken_ctrl_X49_Y1_N0.coord_x = 19;
defparam clken_ctrl_X49_Y1_N0.coord_y = 3;
defparam clken_ctrl_X49_Y1_N0.coord_z = 0;
defparam clken_ctrl_X49_Y1_N0.ClkMux = 2'b10;
defparam clken_ctrl_X49_Y1_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X49_Y2_N0(
	.ClkIn(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp ),
	.ClkEn(),
	.ClkOut(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y2_SIG_VCC ));
defparam clken_ctrl_X49_Y2_N0.coord_x = 19;
defparam clken_ctrl_X49_Y2_N0.coord_y = 4;
defparam clken_ctrl_X49_Y2_N0.coord_z = 0;
defparam clken_ctrl_X49_Y2_N0.ClkMux = 2'b10;
defparam clken_ctrl_X49_Y2_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X49_Y2_N1(
	.ClkIn(\auto_generated_inst.hbo_13_e9fbadbe8ee04947_bp ),
	.ClkEn(),
	.ClkOut(\auto_generated_inst.hbo_13_e9fbadbe8ee04947_bp_X49_Y2_SIG_VCC ));
defparam clken_ctrl_X49_Y2_N1.coord_x = 19;
defparam clken_ctrl_X49_Y2_N1.coord_y = 4;
defparam clken_ctrl_X49_Y2_N1.coord_z = 1;
defparam clken_ctrl_X49_Y2_N1.ClkMux = 2'b10;
defparam clken_ctrl_X49_Y2_N1.ClkEnMux = 2'b01;

alta_io_gclk \gclksw_inst|gclk_switch (
	.inclk(\gclksw_inst|gclk_switch__alta_gclksw__clkout ),
	.outclk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp ));
defparam \gclksw_inst|gclk_switch .coord_x = 22;
defparam \gclksw_inst|gclk_switch .coord_y = 4;
defparam \gclksw_inst|gclk_switch .coord_z = 5;

alta_gclksw \gclksw_inst|gclk_switch__alta_gclksw (
	.resetn(\rv32.resetn_out ),
	.clkin0(\PIN_HSI~input_o ),
	.clkin1(\PIN_HSE~input_o ),
	.clkin2(\pll_inst|auto_generated|pll1_CLK_bus [0]),
	.clkin3(vcc),
	.select({\rv32.sys_ctrl_clkSource[1] , \rv32.sys_ctrl_clkSource[0] }),
	.clkout(\gclksw_inst|gclk_switch__alta_gclksw__clkout ));
defparam \gclksw_inst|gclk_switch__alta_gclksw .coord_x = 22;
defparam \gclksw_inst|gclk_switch__alta_gclksw .coord_y = 4;
defparam \gclksw_inst|gclk_switch__alta_gclksw .coord_z = 0;

alta_slice \macro_inst|led_output|LED_2 (
	.A(\macro_inst|led_output|clkcount [23]),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|led_output|clkcount [24]),
	.Cin(),
	.Qin(\macro_inst|led_output|LED_2~q ),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|LED_2~0_combout ),
	.Cout(),
	.Q(\macro_inst|led_output|LED_2~q ));
defparam \macro_inst|led_output|LED_2 .coord_x = 19;
defparam \macro_inst|led_output|LED_2 .coord_y = 3;
defparam \macro_inst|led_output|LED_2 .coord_z = 12;
defparam \macro_inst|led_output|LED_2 .mask = 16'hF0AA;
defparam \macro_inst|led_output|LED_2 .modeMux = 1'b0;
defparam \macro_inst|led_output|LED_2 .FeedbackMux = 1'b1;
defparam \macro_inst|led_output|LED_2 .ShiftMux = 1'b0;
defparam \macro_inst|led_output|LED_2 .BypassEn = 1'b0;
defparam \macro_inst|led_output|LED_2 .CarryEnb = 1'b1;

alta_slice \macro_inst|led_output|LED_3 (
	.A(\macro_inst|led_output|clkcount [23]),
	.B(vcc),
	.C(vcc),
	.D(\macro_inst|led_output|clkcount [24]),
	.Cin(),
	.Qin(\macro_inst|led_output|LED_3~q ),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|LED_3~0_combout ),
	.Cout(),
	.Q(\macro_inst|led_output|LED_3~q ));
defparam \macro_inst|led_output|LED_3 .coord_x = 19;
defparam \macro_inst|led_output|LED_3 .coord_y = 3;
defparam \macro_inst|led_output|LED_3 .coord_z = 14;
defparam \macro_inst|led_output|LED_3 .mask = 16'hAAF0;
defparam \macro_inst|led_output|LED_3 .modeMux = 1'b0;
defparam \macro_inst|led_output|LED_3 .FeedbackMux = 1'b1;
defparam \macro_inst|led_output|LED_3 .ShiftMux = 1'b0;
defparam \macro_inst|led_output|LED_3 .BypassEn = 1'b0;
defparam \macro_inst|led_output|LED_3 .CarryEnb = 1'b1;

alta_slice \macro_inst|led_output|clkcount[0] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\macro_inst|led_output|clkcount [0]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y2_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[0]~72_combout ),
	.Cout(),
	.Q(\macro_inst|led_output|clkcount [0]));
defparam \macro_inst|led_output|clkcount[0] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[0] .coord_y = 4;
defparam \macro_inst|led_output|clkcount[0] .coord_z = 3;
defparam \macro_inst|led_output|clkcount[0] .mask = 16'h0F0F;
defparam \macro_inst|led_output|clkcount[0] .modeMux = 1'b0;
defparam \macro_inst|led_output|clkcount[0] .FeedbackMux = 1'b1;
defparam \macro_inst|led_output|clkcount[0] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[0] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[0] .CarryEnb = 1'b1;

alta_slice \macro_inst|led_output|clkcount[10] (
	.A(\macro_inst|led_output|clkcount [10]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[9]~41 ),
	.Qin(\macro_inst|led_output|clkcount [10]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y2_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[10]~42_combout ),
	.Cout(\macro_inst|led_output|clkcount[10]~43 ),
	.Q(\macro_inst|led_output|clkcount [10]));
defparam \macro_inst|led_output|clkcount[10] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[10] .coord_y = 4;
defparam \macro_inst|led_output|clkcount[10] .coord_z = 13;
defparam \macro_inst|led_output|clkcount[10] .mask = 16'h5A5F;
defparam \macro_inst|led_output|clkcount[10] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[10] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[10] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[10] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[10] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[11] (
	.A(vcc),
	.B(\macro_inst|led_output|clkcount [11]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[10]~43 ),
	.Qin(\macro_inst|led_output|clkcount [11]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y2_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[11]~44_combout ),
	.Cout(\macro_inst|led_output|clkcount[11]~45 ),
	.Q(\macro_inst|led_output|clkcount [11]));
defparam \macro_inst|led_output|clkcount[11] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[11] .coord_y = 4;
defparam \macro_inst|led_output|clkcount[11] .coord_z = 14;
defparam \macro_inst|led_output|clkcount[11] .mask = 16'hC30C;
defparam \macro_inst|led_output|clkcount[11] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[11] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[11] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[11] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[11] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[12] (
	.A(vcc),
	.B(\macro_inst|led_output|clkcount [12]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[11]~45 ),
	.Qin(\macro_inst|led_output|clkcount [12]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y2_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[12]~46_combout ),
	.Cout(\macro_inst|led_output|clkcount[12]~47 ),
	.Q(\macro_inst|led_output|clkcount [12]));
defparam \macro_inst|led_output|clkcount[12] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[12] .coord_y = 4;
defparam \macro_inst|led_output|clkcount[12] .coord_z = 15;
defparam \macro_inst|led_output|clkcount[12] .mask = 16'h3C3F;
defparam \macro_inst|led_output|clkcount[12] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[12] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[12] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[12] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[12] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[13] (
	.A(\macro_inst|led_output|clkcount [13]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[12]~47 ),
	.Qin(\macro_inst|led_output|clkcount [13]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[13]~48_combout ),
	.Cout(\macro_inst|led_output|clkcount[13]~49 ),
	.Q(\macro_inst|led_output|clkcount [13]));
defparam \macro_inst|led_output|clkcount[13] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[13] .coord_y = 3;
defparam \macro_inst|led_output|clkcount[13] .coord_z = 0;
defparam \macro_inst|led_output|clkcount[13] .mask = 16'hA50A;
defparam \macro_inst|led_output|clkcount[13] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[13] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[13] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[13] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[13] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[14] (
	.A(vcc),
	.B(\macro_inst|led_output|clkcount [14]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[13]~49 ),
	.Qin(\macro_inst|led_output|clkcount [14]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[14]~50_combout ),
	.Cout(\macro_inst|led_output|clkcount[14]~51 ),
	.Q(\macro_inst|led_output|clkcount [14]));
defparam \macro_inst|led_output|clkcount[14] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[14] .coord_y = 3;
defparam \macro_inst|led_output|clkcount[14] .coord_z = 1;
defparam \macro_inst|led_output|clkcount[14] .mask = 16'h3C3F;
defparam \macro_inst|led_output|clkcount[14] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[14] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[14] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[14] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[14] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[15] (
	.A(\macro_inst|led_output|clkcount [15]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[14]~51 ),
	.Qin(\macro_inst|led_output|clkcount [15]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[15]~52_combout ),
	.Cout(\macro_inst|led_output|clkcount[15]~53 ),
	.Q(\macro_inst|led_output|clkcount [15]));
defparam \macro_inst|led_output|clkcount[15] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[15] .coord_y = 3;
defparam \macro_inst|led_output|clkcount[15] .coord_z = 2;
defparam \macro_inst|led_output|clkcount[15] .mask = 16'hA50A;
defparam \macro_inst|led_output|clkcount[15] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[15] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[15] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[15] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[15] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[16] (
	.A(\macro_inst|led_output|clkcount [16]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[15]~53 ),
	.Qin(\macro_inst|led_output|clkcount [16]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[16]~54_combout ),
	.Cout(\macro_inst|led_output|clkcount[16]~55 ),
	.Q(\macro_inst|led_output|clkcount [16]));
defparam \macro_inst|led_output|clkcount[16] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[16] .coord_y = 3;
defparam \macro_inst|led_output|clkcount[16] .coord_z = 3;
defparam \macro_inst|led_output|clkcount[16] .mask = 16'h5A5F;
defparam \macro_inst|led_output|clkcount[16] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[16] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[16] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[16] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[16] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[17] (
	.A(\macro_inst|led_output|clkcount [17]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[16]~55 ),
	.Qin(\macro_inst|led_output|clkcount [17]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[17]~56_combout ),
	.Cout(\macro_inst|led_output|clkcount[17]~57 ),
	.Q(\macro_inst|led_output|clkcount [17]));
defparam \macro_inst|led_output|clkcount[17] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[17] .coord_y = 3;
defparam \macro_inst|led_output|clkcount[17] .coord_z = 4;
defparam \macro_inst|led_output|clkcount[17] .mask = 16'hA50A;
defparam \macro_inst|led_output|clkcount[17] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[17] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[17] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[17] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[17] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[18] (
	.A(vcc),
	.B(\macro_inst|led_output|clkcount [18]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[17]~57 ),
	.Qin(\macro_inst|led_output|clkcount [18]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[18]~58_combout ),
	.Cout(\macro_inst|led_output|clkcount[18]~59 ),
	.Q(\macro_inst|led_output|clkcount [18]));
defparam \macro_inst|led_output|clkcount[18] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[18] .coord_y = 3;
defparam \macro_inst|led_output|clkcount[18] .coord_z = 5;
defparam \macro_inst|led_output|clkcount[18] .mask = 16'h3C3F;
defparam \macro_inst|led_output|clkcount[18] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[18] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[18] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[18] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[18] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[19] (
	.A(vcc),
	.B(\macro_inst|led_output|clkcount [19]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[18]~59 ),
	.Qin(\macro_inst|led_output|clkcount [19]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[19]~60_combout ),
	.Cout(\macro_inst|led_output|clkcount[19]~61 ),
	.Q(\macro_inst|led_output|clkcount [19]));
defparam \macro_inst|led_output|clkcount[19] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[19] .coord_y = 3;
defparam \macro_inst|led_output|clkcount[19] .coord_z = 6;
defparam \macro_inst|led_output|clkcount[19] .mask = 16'hC30C;
defparam \macro_inst|led_output|clkcount[19] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[19] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[19] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[19] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[19] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[1] (
	.A(\macro_inst|led_output|clkcount [1]),
	.B(\macro_inst|led_output|clkcount [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\macro_inst|led_output|clkcount [1]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y2_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[1]~24_combout ),
	.Cout(\macro_inst|led_output|clkcount[1]~25 ),
	.Q(\macro_inst|led_output|clkcount [1]));
defparam \macro_inst|led_output|clkcount[1] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[1] .coord_y = 4;
defparam \macro_inst|led_output|clkcount[1] .coord_z = 4;
defparam \macro_inst|led_output|clkcount[1] .mask = 16'h6688;
defparam \macro_inst|led_output|clkcount[1] .modeMux = 1'b0;
defparam \macro_inst|led_output|clkcount[1] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[1] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[1] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[1] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[20] (
	.A(\macro_inst|led_output|clkcount [20]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[19]~61 ),
	.Qin(\macro_inst|led_output|clkcount [20]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[20]~62_combout ),
	.Cout(\macro_inst|led_output|clkcount[20]~63 ),
	.Q(\macro_inst|led_output|clkcount [20]));
defparam \macro_inst|led_output|clkcount[20] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[20] .coord_y = 3;
defparam \macro_inst|led_output|clkcount[20] .coord_z = 7;
defparam \macro_inst|led_output|clkcount[20] .mask = 16'h5A5F;
defparam \macro_inst|led_output|clkcount[20] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[20] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[20] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[20] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[20] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[21] (
	.A(\macro_inst|led_output|clkcount [21]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[20]~63 ),
	.Qin(\macro_inst|led_output|clkcount [21]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[21]~64_combout ),
	.Cout(\macro_inst|led_output|clkcount[21]~65 ),
	.Q(\macro_inst|led_output|clkcount [21]));
defparam \macro_inst|led_output|clkcount[21] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[21] .coord_y = 3;
defparam \macro_inst|led_output|clkcount[21] .coord_z = 8;
defparam \macro_inst|led_output|clkcount[21] .mask = 16'hA50A;
defparam \macro_inst|led_output|clkcount[21] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[21] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[21] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[21] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[21] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[22] (
	.A(\macro_inst|led_output|clkcount [22]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[21]~65 ),
	.Qin(\macro_inst|led_output|clkcount [22]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[22]~66_combout ),
	.Cout(\macro_inst|led_output|clkcount[22]~67 ),
	.Q(\macro_inst|led_output|clkcount [22]));
defparam \macro_inst|led_output|clkcount[22] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[22] .coord_y = 3;
defparam \macro_inst|led_output|clkcount[22] .coord_z = 9;
defparam \macro_inst|led_output|clkcount[22] .mask = 16'h5A5F;
defparam \macro_inst|led_output|clkcount[22] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[22] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[22] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[22] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[22] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[23] (
	.A(\macro_inst|led_output|clkcount [23]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[22]~67 ),
	.Qin(\macro_inst|led_output|clkcount [23]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[23]~68_combout ),
	.Cout(\macro_inst|led_output|clkcount[23]~69 ),
	.Q(\macro_inst|led_output|clkcount [23]));
defparam \macro_inst|led_output|clkcount[23] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[23] .coord_y = 3;
defparam \macro_inst|led_output|clkcount[23] .coord_z = 10;
defparam \macro_inst|led_output|clkcount[23] .mask = 16'hA50A;
defparam \macro_inst|led_output|clkcount[23] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[23] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[23] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[23] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[23] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[24] (
	.A(vcc),
	.B(\macro_inst|led_output|clkcount [24]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[23]~69 ),
	.Qin(\macro_inst|led_output|clkcount [24]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y1_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[24]~70_combout ),
	.Cout(),
	.Q(\macro_inst|led_output|clkcount [24]));
defparam \macro_inst|led_output|clkcount[24] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[24] .coord_y = 3;
defparam \macro_inst|led_output|clkcount[24] .coord_z = 11;
defparam \macro_inst|led_output|clkcount[24] .mask = 16'h3C3C;
defparam \macro_inst|led_output|clkcount[24] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[24] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[24] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[24] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[24] .CarryEnb = 1'b1;

alta_slice \macro_inst|led_output|clkcount[2] (
	.A(vcc),
	.B(\macro_inst|led_output|clkcount [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[1]~25 ),
	.Qin(\macro_inst|led_output|clkcount [2]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y2_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[2]~26_combout ),
	.Cout(\macro_inst|led_output|clkcount[2]~27 ),
	.Q(\macro_inst|led_output|clkcount [2]));
defparam \macro_inst|led_output|clkcount[2] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[2] .coord_y = 4;
defparam \macro_inst|led_output|clkcount[2] .coord_z = 5;
defparam \macro_inst|led_output|clkcount[2] .mask = 16'h3C3F;
defparam \macro_inst|led_output|clkcount[2] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[2] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[2] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[2] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[2] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[3] (
	.A(vcc),
	.B(\macro_inst|led_output|clkcount [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[2]~27 ),
	.Qin(\macro_inst|led_output|clkcount [3]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y2_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[3]~28_combout ),
	.Cout(\macro_inst|led_output|clkcount[3]~29 ),
	.Q(\macro_inst|led_output|clkcount [3]));
defparam \macro_inst|led_output|clkcount[3] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[3] .coord_y = 4;
defparam \macro_inst|led_output|clkcount[3] .coord_z = 6;
defparam \macro_inst|led_output|clkcount[3] .mask = 16'hC30C;
defparam \macro_inst|led_output|clkcount[3] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[3] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[3] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[3] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[3] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[4] (
	.A(vcc),
	.B(\macro_inst|led_output|clkcount [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[3]~29 ),
	.Qin(\macro_inst|led_output|clkcount [4]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y2_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[4]~30_combout ),
	.Cout(\macro_inst|led_output|clkcount[4]~31 ),
	.Q(\macro_inst|led_output|clkcount [4]));
defparam \macro_inst|led_output|clkcount[4] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[4] .coord_y = 4;
defparam \macro_inst|led_output|clkcount[4] .coord_z = 7;
defparam \macro_inst|led_output|clkcount[4] .mask = 16'h3C3F;
defparam \macro_inst|led_output|clkcount[4] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[4] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[4] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[4] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[4] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[5] (
	.A(\macro_inst|led_output|clkcount [5]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[4]~31 ),
	.Qin(\macro_inst|led_output|clkcount [5]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y2_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[5]~32_combout ),
	.Cout(\macro_inst|led_output|clkcount[5]~33 ),
	.Q(\macro_inst|led_output|clkcount [5]));
defparam \macro_inst|led_output|clkcount[5] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[5] .coord_y = 4;
defparam \macro_inst|led_output|clkcount[5] .coord_z = 8;
defparam \macro_inst|led_output|clkcount[5] .mask = 16'hA50A;
defparam \macro_inst|led_output|clkcount[5] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[5] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[5] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[5] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[5] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[6] (
	.A(vcc),
	.B(\macro_inst|led_output|clkcount [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[5]~33 ),
	.Qin(\macro_inst|led_output|clkcount [6]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y2_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[6]~34_combout ),
	.Cout(\macro_inst|led_output|clkcount[6]~35 ),
	.Q(\macro_inst|led_output|clkcount [6]));
defparam \macro_inst|led_output|clkcount[6] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[6] .coord_y = 4;
defparam \macro_inst|led_output|clkcount[6] .coord_z = 9;
defparam \macro_inst|led_output|clkcount[6] .mask = 16'h3C3F;
defparam \macro_inst|led_output|clkcount[6] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[6] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[6] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[6] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[6] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[7] (
	.A(vcc),
	.B(\macro_inst|led_output|clkcount [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[6]~35 ),
	.Qin(\macro_inst|led_output|clkcount [7]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y2_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[7]~36_combout ),
	.Cout(\macro_inst|led_output|clkcount[7]~37 ),
	.Q(\macro_inst|led_output|clkcount [7]));
defparam \macro_inst|led_output|clkcount[7] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[7] .coord_y = 4;
defparam \macro_inst|led_output|clkcount[7] .coord_z = 10;
defparam \macro_inst|led_output|clkcount[7] .mask = 16'hC30C;
defparam \macro_inst|led_output|clkcount[7] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[7] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[7] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[7] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[7] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[8] (
	.A(\macro_inst|led_output|clkcount [8]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[7]~37 ),
	.Qin(\macro_inst|led_output|clkcount [8]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y2_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[8]~38_combout ),
	.Cout(\macro_inst|led_output|clkcount[8]~39 ),
	.Q(\macro_inst|led_output|clkcount [8]));
defparam \macro_inst|led_output|clkcount[8] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[8] .coord_y = 4;
defparam \macro_inst|led_output|clkcount[8] .coord_z = 11;
defparam \macro_inst|led_output|clkcount[8] .mask = 16'h5A5F;
defparam \macro_inst|led_output|clkcount[8] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[8] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[8] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[8] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[8] .CarryEnb = 1'b0;

alta_slice \macro_inst|led_output|clkcount[9] (
	.A(\macro_inst|led_output|clkcount [9]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\macro_inst|led_output|clkcount[8]~39 ),
	.Qin(\macro_inst|led_output|clkcount [9]),
	.Clk(\auto_generated_inst.hbo_22_f9ff3d300b43c0f2_bp_X49_Y2_SIG_VCC ),
	.AsyncReset(AsyncReset_X49_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\macro_inst|led_output|clkcount[9]~40_combout ),
	.Cout(\macro_inst|led_output|clkcount[9]~41 ),
	.Q(\macro_inst|led_output|clkcount [9]));
defparam \macro_inst|led_output|clkcount[9] .coord_x = 19;
defparam \macro_inst|led_output|clkcount[9] .coord_y = 4;
defparam \macro_inst|led_output|clkcount[9] .coord_z = 12;
defparam \macro_inst|led_output|clkcount[9] .mask = 16'hA50A;
defparam \macro_inst|led_output|clkcount[9] .modeMux = 1'b1;
defparam \macro_inst|led_output|clkcount[9] .FeedbackMux = 1'b0;
defparam \macro_inst|led_output|clkcount[9] .ShiftMux = 1'b0;
defparam \macro_inst|led_output|clkcount[9] .BypassEn = 1'b0;
defparam \macro_inst|led_output|clkcount[9] .CarryEnb = 1'b0;

alta_pllve \pll_inst|auto_generated|pll1 (
	.clkin(\PIN_HSE~input_o ),
	.clkfb(\pll_inst|auto_generated|pll1~FBOUT ),
	.pfden(vcc),
	.resetn(!\PLL_ENABLE~combout ),
	.phasecounterselect({gnd, gnd, gnd}),
	.phaseupdown(gnd),
	.phasestep(gnd),
	.scanclk(gnd),
	.scanclkena(vcc),
	.scandata(gnd),
	.configupdate(gnd),
	.scandataout(),
	.scandone(),
	.phasedone(),
	.clkout0(\pll_inst|auto_generated|pll1_CLK_bus [0]),
	.clkout1(\pll_inst|auto_generated|pll1_CLK_bus [1]),
	.clkout2(\pll_inst|auto_generated|pll1_CLK_bus [2]),
	.clkout3(\pll_inst|auto_generated|pll1_CLK_bus [3]),
	.clkout4(\pll_inst|auto_generated|pll1_CLK_bus [4]),
	.clkfbout(\pll_inst|auto_generated|pll1~FBOUT ),
	.lock(\auto_generated_inst.hbo_13_e9fbadbe8ee04947_bp ));
defparam \pll_inst|auto_generated|pll1 .coord_x = 22;
defparam \pll_inst|auto_generated|pll1 .coord_y = 5;
defparam \pll_inst|auto_generated|pll1 .coord_z = 0;
defparam \pll_inst|auto_generated|pll1 .CLKIN_HIGH = 8'b00000000;
defparam \pll_inst|auto_generated|pll1 .CLKIN_LOW = 8'b00000000;
defparam \pll_inst|auto_generated|pll1 .CLKIN_TRIM = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKIN_BYPASS = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKFB_HIGH = 8'b00111101;
defparam \pll_inst|auto_generated|pll1 .CLKFB_LOW = 8'b00111110;
defparam \pll_inst|auto_generated|pll1 .CLKFB_TRIM = 1'b1;
defparam \pll_inst|auto_generated|pll1 .CLKFB_BYPASS = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKDIV0_EN = 1'b1;
defparam \pll_inst|auto_generated|pll1 .CLKDIV1_EN = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKDIV2_EN = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKDIV3_EN = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKDIV4_EN = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT0_HIGH = 8'b00000001;
defparam \pll_inst|auto_generated|pll1 .CLKOUT0_LOW = 8'b00000010;
defparam \pll_inst|auto_generated|pll1 .CLKOUT0_TRIM = 1'b1;
defparam \pll_inst|auto_generated|pll1 .CLKOUT0_BYPASS = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT1_HIGH = 8'b11111111;
defparam \pll_inst|auto_generated|pll1 .CLKOUT1_LOW = 8'b11111111;
defparam \pll_inst|auto_generated|pll1 .CLKOUT1_TRIM = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT1_BYPASS = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT2_HIGH = 8'b11111111;
defparam \pll_inst|auto_generated|pll1 .CLKOUT2_LOW = 8'b11111111;
defparam \pll_inst|auto_generated|pll1 .CLKOUT2_TRIM = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT2_BYPASS = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT3_HIGH = 8'b11111111;
defparam \pll_inst|auto_generated|pll1 .CLKOUT3_LOW = 8'b11111111;
defparam \pll_inst|auto_generated|pll1 .CLKOUT3_TRIM = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT3_BYPASS = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT4_HIGH = 8'b11111111;
defparam \pll_inst|auto_generated|pll1 .CLKOUT4_LOW = 8'b11111111;
defparam \pll_inst|auto_generated|pll1 .CLKOUT4_TRIM = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT4_BYPASS = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT0_DEL = 8'b00000000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT1_DEL = 8'b00000000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT2_DEL = 8'b00000000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT3_DEL = 8'b00000000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT4_DEL = 8'b00000000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT0_PHASE = 3'b000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT1_PHASE = 3'b000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT2_PHASE = 3'b000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT3_PHASE = 3'b000;
defparam \pll_inst|auto_generated|pll1 .CLKOUT4_PHASE = 3'b000;
defparam \pll_inst|auto_generated|pll1 .CLKFB_DEL = 8'b00000000;
defparam \pll_inst|auto_generated|pll1 .CLKFB_PHASE = 3'b000;
defparam \pll_inst|auto_generated|pll1 .FEEDBACK_MODE = 3'b100;
defparam \pll_inst|auto_generated|pll1 .FBDELAY_VAL = 3'b100;
defparam \pll_inst|auto_generated|pll1 .PLLOUTP_EN = 1'b0;
defparam \pll_inst|auto_generated|pll1 .PLLOUTN_EN = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT1_CASCADE = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT2_CASCADE = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT3_CASCADE = 1'b0;
defparam \pll_inst|auto_generated|pll1 .CLKOUT4_CASCADE = 1'b0;
defparam \pll_inst|auto_generated|pll1 .VCO_POST_DIV = 1'b1;
defparam \pll_inst|auto_generated|pll1 .REG_CTRL = 2'b00;
defparam \pll_inst|auto_generated|pll1 .CP = 3'b100;
defparam \pll_inst|auto_generated|pll1 .RREF = 2'b01;
defparam \pll_inst|auto_generated|pll1 .RVI = 2'b01;
defparam \pll_inst|auto_generated|pll1 .IVCO = 3'b010;
defparam \pll_inst|auto_generated|pll1 .PLL_EN_FLAG = 1'b1;

alta_slice \pll_inst|auto_generated|pll_lock_sync (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\pll_inst|auto_generated|pll_lock_sync~q ),
	.Clk(\auto_generated_inst.hbo_13_e9fbadbe8ee04947_bp_X49_Y2_SIG_VCC ),
	.AsyncReset(\PLL_ENABLE~clkctrl_outclk__AsyncReset_X49_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\pll_inst|auto_generated|pll_lock_sync~feeder_combout ),
	.Cout(),
	.Q(\pll_inst|auto_generated|pll_lock_sync~q ));
defparam \pll_inst|auto_generated|pll_lock_sync .coord_x = 19;
defparam \pll_inst|auto_generated|pll_lock_sync .coord_y = 4;
defparam \pll_inst|auto_generated|pll_lock_sync .coord_z = 1;
defparam \pll_inst|auto_generated|pll_lock_sync .mask = 16'hFFFF;
defparam \pll_inst|auto_generated|pll_lock_sync .modeMux = 1'b0;
defparam \pll_inst|auto_generated|pll_lock_sync .FeedbackMux = 1'b0;
defparam \pll_inst|auto_generated|pll_lock_sync .ShiftMux = 1'b0;
defparam \pll_inst|auto_generated|pll_lock_sync .BypassEn = 1'b0;
defparam \pll_inst|auto_generated|pll_lock_sync .CarryEnb = 1'b1;

alta_rv32 rv32(
	.sys_clk(\gclksw_inst|gclk_switch__alta_gclksw__clkout ),
	.mem_ahb_hready(\rv32.mem_ahb_hready ),
	.mem_ahb_hreadyout(vcc),
	.mem_ahb_htrans({\rv32.mem_ahb_htrans[1] , \rv32.mem_ahb_htrans[0] }),
	.mem_ahb_hsize({\rv32.mem_ahb_hsize[2] , \rv32.mem_ahb_hsize[1] , \rv32.mem_ahb_hsize[0] }),
	.mem_ahb_hburst({\rv32.mem_ahb_hburst[2] , \rv32.mem_ahb_hburst[1] , \rv32.mem_ahb_hburst[0] }),
	.mem_ahb_hwrite(\rv32.mem_ahb_hwrite ),
	.mem_ahb_haddr({\rv32.mem_ahb_haddr[31] , \rv32.mem_ahb_haddr[30] , \rv32.mem_ahb_haddr[29] , \rv32.mem_ahb_haddr[28] , \rv32.mem_ahb_haddr[27] , \rv32.mem_ahb_haddr[26] , \rv32.mem_ahb_haddr[25] , \rv32.mem_ahb_haddr[24] , \rv32.mem_ahb_haddr[23] , \rv32.mem_ahb_haddr[22] , \rv32.mem_ahb_haddr[21] , \rv32.mem_ahb_haddr[20] , \rv32.mem_ahb_haddr[19] , \rv32.mem_ahb_haddr[18] , \rv32.mem_ahb_haddr[17] , \rv32.mem_ahb_haddr[16] , \rv32.mem_ahb_haddr[15] , \rv32.mem_ahb_haddr[14] , \rv32.mem_ahb_haddr[13] , \rv32.mem_ahb_haddr[12] , \rv32.mem_ahb_haddr[11] , \rv32.mem_ahb_haddr[10] , \rv32.mem_ahb_haddr[9] , \rv32.mem_ahb_haddr[8] , \rv32.mem_ahb_haddr[7] , \rv32.mem_ahb_haddr[6] , \rv32.mem_ahb_haddr[5] , \rv32.mem_ahb_haddr[4] , \rv32.mem_ahb_haddr[3] , \rv32.mem_ahb_haddr[2] , \rv32.mem_ahb_haddr[1] , \rv32.mem_ahb_haddr[0] }),
	.mem_ahb_hwdata({\rv32.mem_ahb_hwdata[31] , \rv32.mem_ahb_hwdata[30] , \rv32.mem_ahb_hwdata[29] , \rv32.mem_ahb_hwdata[28] , \rv32.mem_ahb_hwdata[27] , \rv32.mem_ahb_hwdata[26] , \rv32.mem_ahb_hwdata[25] , \rv32.mem_ahb_hwdata[24] , \rv32.mem_ahb_hwdata[23] , \rv32.mem_ahb_hwdata[22] , \rv32.mem_ahb_hwdata[21] , \rv32.mem_ahb_hwdata[20] , \rv32.mem_ahb_hwdata[19] , \rv32.mem_ahb_hwdata[18] , \rv32.mem_ahb_hwdata[17] , \rv32.mem_ahb_hwdata[16] , \rv32.mem_ahb_hwdata[15] , \rv32.mem_ahb_hwdata[14] , \rv32.mem_ahb_hwdata[13] , \rv32.mem_ahb_hwdata[12] , \rv32.mem_ahb_hwdata[11] , \rv32.mem_ahb_hwdata[10] , \rv32.mem_ahb_hwdata[9] , \rv32.mem_ahb_hwdata[8] , \rv32.mem_ahb_hwdata[7] , \rv32.mem_ahb_hwdata[6] , \rv32.mem_ahb_hwdata[5] , \rv32.mem_ahb_hwdata[4] , \rv32.mem_ahb_hwdata[3] , \rv32.mem_ahb_hwdata[2] , \rv32.mem_ahb_hwdata[1] , \rv32.mem_ahb_hwdata[0] }),
	.mem_ahb_hresp(gnd),
	.mem_ahb_hrdata({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.slave_ahb_hsel(gnd),
	.slave_ahb_hready(vcc),
	.slave_ahb_hreadyout(\rv32.slave_ahb_hreadyout ),
	.slave_ahb_htrans({gnd, gnd}),
	.slave_ahb_hsize({gnd, gnd, gnd}),
	.slave_ahb_hburst({gnd, gnd, gnd}),
	.slave_ahb_hwrite(gnd),
	.slave_ahb_haddr({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.slave_ahb_hwdata({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.slave_ahb_hresp(\rv32.slave_ahb_hresp ),
	.slave_ahb_hrdata({\rv32.slave_ahb_hrdata[31] , \rv32.slave_ahb_hrdata[30] , \rv32.slave_ahb_hrdata[29] , \rv32.slave_ahb_hrdata[28] , \rv32.slave_ahb_hrdata[27] , \rv32.slave_ahb_hrdata[26] , \rv32.slave_ahb_hrdata[25] , \rv32.slave_ahb_hrdata[24] , \rv32.slave_ahb_hrdata[23] , \rv32.slave_ahb_hrdata[22] , \rv32.slave_ahb_hrdata[21] , \rv32.slave_ahb_hrdata[20] , \rv32.slave_ahb_hrdata[19] , \rv32.slave_ahb_hrdata[18] , \rv32.slave_ahb_hrdata[17] , \rv32.slave_ahb_hrdata[16] , \rv32.slave_ahb_hrdata[15] , \rv32.slave_ahb_hrdata[14] , \rv32.slave_ahb_hrdata[13] , \rv32.slave_ahb_hrdata[12] , \rv32.slave_ahb_hrdata[11] , \rv32.slave_ahb_hrdata[10] , \rv32.slave_ahb_hrdata[9] , \rv32.slave_ahb_hrdata[8] , \rv32.slave_ahb_hrdata[7] , \rv32.slave_ahb_hrdata[6] , \rv32.slave_ahb_hrdata[5] , \rv32.slave_ahb_hrdata[4] , \rv32.slave_ahb_hrdata[3] , \rv32.slave_ahb_hrdata[2] , \rv32.slave_ahb_hrdata[1] , \rv32.slave_ahb_hrdata[0] }),
	.gpio0_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio0_io_out_data({\rv32.gpio0_io_out_data[7] , \rv32.gpio0_io_out_data[6] , \rv32.gpio0_io_out_data[5] , \rv32.gpio0_io_out_data[4] , \rv32.gpio0_io_out_data[3] , \rv32.gpio0_io_out_data[2] , \rv32.gpio0_io_out_data[1] , \rv32.gpio0_io_out_data[0] }),
	.gpio0_io_out_en({\rv32.gpio0_io_out_en[7] , \rv32.gpio0_io_out_en[6] , \rv32.gpio0_io_out_en[5] , \rv32.gpio0_io_out_en[4] , \rv32.gpio0_io_out_en[3] , \rv32.gpio0_io_out_en[2] , \rv32.gpio0_io_out_en[1] , \rv32.gpio0_io_out_en[0] }),
	.gpio1_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio1_io_out_data({\rv32.gpio1_io_out_data[7] , \rv32.gpio1_io_out_data[6] , \rv32.gpio1_io_out_data[5] , \rv32.gpio1_io_out_data[4] , \rv32.gpio1_io_out_data[3] , \rv32.gpio1_io_out_data[2] , \rv32.gpio1_io_out_data[1] , \rv32.gpio1_io_out_data[0] }),
	.gpio1_io_out_en({\rv32.gpio1_io_out_en[7] , \rv32.gpio1_io_out_en[6] , \rv32.gpio1_io_out_en[5] , \rv32.gpio1_io_out_en[4] , \rv32.gpio1_io_out_en[3] , \rv32.gpio1_io_out_en[2] , \rv32.gpio1_io_out_en[1] , \rv32.gpio1_io_out_en[0] }),
	.sys_ctrl_clkSource({\rv32.sys_ctrl_clkSource[1] , \rv32.sys_ctrl_clkSource[0] }),
	.sys_ctrl_hseEnable(\rv32.sys_ctrl_hseEnable ),
	.sys_ctrl_hseBypass(\rv32.sys_ctrl_hseBypass ),
	.sys_ctrl_pllEnable(\rv32.sys_ctrl_pllEnable ),
	.sys_ctrl_pllReady(\auto_generated_inst.hbo_13_e9fbadbe8ee04947_bp ),
	.sys_ctrl_sleep(\rv32.sys_ctrl_sleep ),
	.sys_ctrl_stop(\rv32.sys_ctrl_stop ),
	.sys_ctrl_standby(\rv32.sys_ctrl_standby ),
	.gpio2_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio2_io_out_data({\rv32.gpio2_io_out_data[7] , \rv32.gpio2_io_out_data[6] , \rv32.gpio2_io_out_data[5] , \rv32.gpio2_io_out_data[4] , \rv32.gpio2_io_out_data[3] , \rv32.gpio2_io_out_data[2] , \rv32.gpio2_io_out_data[1] , \rv32.gpio2_io_out_data[0] }),
	.gpio2_io_out_en({\rv32.gpio2_io_out_en[7] , \rv32.gpio2_io_out_en[6] , \rv32.gpio2_io_out_en[5] , \rv32.gpio2_io_out_en[4] , \rv32.gpio2_io_out_en[3] , \rv32.gpio2_io_out_en[2] , \rv32.gpio2_io_out_en[1] , \rv32.gpio2_io_out_en[0] }),
	.gpio3_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio3_io_out_data({\rv32.gpio3_io_out_data[7] , \rv32.gpio3_io_out_data[6] , \rv32.gpio3_io_out_data[5] , \rv32.gpio3_io_out_data[4] , \rv32.gpio3_io_out_data[3] , \rv32.gpio3_io_out_data[2] , \rv32.gpio3_io_out_data[1] , \rv32.gpio3_io_out_data[0] }),
	.gpio3_io_out_en({\rv32.gpio3_io_out_en[7] , \rv32.gpio3_io_out_en[6] , \rv32.gpio3_io_out_en[5] , \rv32.gpio3_io_out_en[4] , \rv32.gpio3_io_out_en[3] , \rv32.gpio3_io_out_en[2] , \rv32.gpio3_io_out_en[1] , \rv32.gpio3_io_out_en[0] }),
	.gpio4_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio4_io_out_data({\rv32.gpio4_io_out_data[7] , \rv32.gpio4_io_out_data[6] , \rv32.gpio4_io_out_data[5] , \rv32.gpio4_io_out_data[4] , \rv32.gpio4_io_out_data[3] , \rv32.gpio4_io_out_data[2] , \rv32.gpio4_io_out_data[1] , \rv32.gpio4_io_out_data[0] }),
	.gpio4_io_out_en({\rv32.gpio4_io_out_en[7] , \rv32.gpio4_io_out_en[6] , \rv32.gpio4_io_out_en[5] , \rv32.gpio4_io_out_en[4] , \rv32.gpio4_io_out_en[3] , \rv32.gpio4_io_out_en[2] , \rv32.gpio4_io_out_en[1] , \rv32.gpio4_io_out_en[0] }),
	.gpio5_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio5_io_out_data({\rv32.gpio5_io_out_data[7] , \rv32.gpio5_io_out_data[6] , \rv32.gpio5_io_out_data[5] , \rv32.gpio5_io_out_data[4] , \rv32.gpio5_io_out_data[3] , \rv32.gpio5_io_out_data[2] , \rv32.gpio5_io_out_data[1] , \rv32.gpio5_io_out_data[0] }),
	.gpio5_io_out_en({\rv32.gpio5_io_out_en[7] , \rv32.gpio5_io_out_en[6] , \rv32.gpio5_io_out_en[5] , \rv32.gpio5_io_out_en[4] , \rv32.gpio5_io_out_en[3] , \rv32.gpio5_io_out_en[2] , \rv32.gpio5_io_out_en[1] , \rv32.gpio5_io_out_en[0] }),
	.gpio6_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio6_io_out_data({\rv32.gpio6_io_out_data[7] , \rv32.gpio6_io_out_data[6] , \rv32.gpio6_io_out_data[5] , \rv32.gpio6_io_out_data[4] , \rv32.gpio6_io_out_data[3] , \rv32.gpio6_io_out_data[2] , \rv32.gpio6_io_out_data[1] , \rv32.gpio6_io_out_data[0] }),
	.gpio6_io_out_en({\rv32.gpio6_io_out_en[7] , \rv32.gpio6_io_out_en[6] , \rv32.gpio6_io_out_en[5] , \rv32.gpio6_io_out_en[4] , \rv32.gpio6_io_out_en[3] , \rv32.gpio6_io_out_en[2] , \rv32.gpio6_io_out_en[1] , \rv32.gpio6_io_out_en[0] }),
	.gpio7_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio7_io_out_data({\rv32.gpio7_io_out_data[7] , \rv32.gpio7_io_out_data[6] , \rv32.gpio7_io_out_data[5] , \rv32.gpio7_io_out_data[4] , \rv32.gpio7_io_out_data[3] , \rv32.gpio7_io_out_data[2] , \rv32.gpio7_io_out_data[1] , \rv32.gpio7_io_out_data[0] }),
	.gpio7_io_out_en({\rv32.gpio7_io_out_en[7] , \rv32.gpio7_io_out_en[6] , \rv32.gpio7_io_out_en[5] , \rv32.gpio7_io_out_en[4] , \rv32.gpio7_io_out_en[3] , \rv32.gpio7_io_out_en[2] , \rv32.gpio7_io_out_en[1] , \rv32.gpio7_io_out_en[0] }),
	.gpio8_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio8_io_out_data({\rv32.gpio8_io_out_data[7] , \rv32.gpio8_io_out_data[6] , \rv32.gpio8_io_out_data[5] , \rv32.gpio8_io_out_data[4] , \rv32.gpio8_io_out_data[3] , \rv32.gpio8_io_out_data[2] , \rv32.gpio8_io_out_data[1] , \rv32.gpio8_io_out_data[0] }),
	.gpio8_io_out_en({\rv32.gpio8_io_out_en[7] , \rv32.gpio8_io_out_en[6] , \rv32.gpio8_io_out_en[5] , \rv32.gpio8_io_out_en[4] , \rv32.gpio8_io_out_en[3] , \rv32.gpio8_io_out_en[2] , \rv32.gpio8_io_out_en[1] , \rv32.gpio8_io_out_en[0] }),
	.gpio9_io_in({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.gpio9_io_out_data({\rv32.gpio9_io_out_data[7] , \rv32.gpio9_io_out_data[6] , \rv32.gpio9_io_out_data[5] , \rv32.gpio9_io_out_data[4] , \rv32.gpio9_io_out_data[3] , \rv32.gpio9_io_out_data[2] , \rv32.gpio9_io_out_data[1] , \rv32.gpio9_io_out_data[0] }),
	.gpio9_io_out_en({\rv32.gpio9_io_out_en[7] , \rv32.gpio9_io_out_en[6] , \rv32.gpio9_io_out_en[5] , \rv32.gpio9_io_out_en[4] , \rv32.gpio9_io_out_en[3] , \rv32.gpio9_io_out_en[2] , \rv32.gpio9_io_out_en[1] , \rv32.gpio9_io_out_en[0] }),
	.ext_resetn(vcc),
	.resetn_out(\rv32.resetn_out ),
	.dmactive(\rv32.dmactive ),
	.swj_JTAGNSW(\rv32.swj_JTAGNSW ),
	.swj_JTAGSTATE({\rv32.swj_JTAGSTATE[3] , \rv32.swj_JTAGSTATE[2] , \rv32.swj_JTAGSTATE[1] , \rv32.swj_JTAGSTATE[0] }),
	.swj_JTAGIR({\rv32.swj_JTAGIR[3] , \rv32.swj_JTAGIR[2] , \rv32.swj_JTAGIR[1] , \rv32.swj_JTAGIR[0] }),
	.ext_int({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
	.ext_dma_DMACBREQ({gnd, gnd, gnd, gnd}),
	.ext_dma_DMACLBREQ({gnd, gnd, gnd, gnd}),
	.ext_dma_DMACSREQ({gnd, gnd, gnd, gnd}),
	.ext_dma_DMACLSREQ({gnd, gnd, gnd, gnd}),
	.ext_dma_DMACCLR({\rv32.ext_dma_DMACCLR[3] , \rv32.ext_dma_DMACCLR[2] , \rv32.ext_dma_DMACCLR[1] , \rv32.ext_dma_DMACCLR[0] }),
	.ext_dma_DMACTC({\rv32.ext_dma_DMACTC[3] , \rv32.ext_dma_DMACTC[2] , \rv32.ext_dma_DMACTC[1] , \rv32.ext_dma_DMACTC[0] }),
	.local_int({gnd, gnd, gnd, gnd}),
	.test_mode({gnd, gnd}),
	.usb0_xcvr_clk(gnd),
	.usb0_id(vcc));
defparam rv32.coord_x = 0;
defparam rv32.coord_y = 5;
defparam rv32.coord_z = 0;

endmodule
