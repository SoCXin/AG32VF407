`timescale 1 ps/ 1 ps

module top (
  PIN_31,
  PIN_32,
  PIN_HSE,
  PIN_HSI,
  PIN_OSC
);
output PIN_31;
output PIN_32;
input PIN_HSE;
input PIN_HSI;
input PIN_OSC;

// HSE clock
assign PIN_HSE_in = PIN_HSE;

// HSI clock
assign PIN_HSI_in = PIN_HSI;

// OSC clock
assign PIN_OSC_in = PIN_OSC;

wire [4:0] PLL_CLKOUT;
(* keep = 1 *) wire       sys_resetn;
(* keep = 1 *) wire       sys_ctrl_stop;
(* keep = 1 *) wire [1:0] sys_ctrl_clkSource;
(* keep = 1 *) wire       PLL_ENABLE;
(* keep = 1 *) wire       PLL_LOCK;

altpll pll_inst (
  .areset(!PLL_ENABLE),
  .inclk (PIN_HSE_in),
  .clk   (PLL_CLKOUT),
  .locked(PLL_LOCK));
defparam pll_inst.bandwidth_type          = "AUTO";
defparam pll_inst.clk0_divide_by          = 6;
defparam pll_inst.clk0_multiply_by        = 75;
defparam pll_inst.clk0_phase_shift        = "0";
defparam pll_inst.clk1_divide_by          = 6;
defparam pll_inst.clk1_multiply_by        = 75;
defparam pll_inst.clk1_phase_shift        = "0";
defparam pll_inst.clk2_divide_by          = 6;
defparam pll_inst.clk2_multiply_by        = 75;
defparam pll_inst.clk2_phase_shift        = "0";
defparam pll_inst.clk3_divide_by          = 6;
defparam pll_inst.clk3_multiply_by        = 75;
defparam pll_inst.clk3_phase_shift        = "0";
defparam pll_inst.clk4_divide_by          = 6;
defparam pll_inst.clk4_multiply_by        = 75;
defparam pll_inst.clk4_phase_shift        = "0";
defparam pll_inst.compensate_clock        = "CLK0";
defparam pll_inst.inclk0_input_frequency  = 125000;
defparam pll_inst.lpm_type                = "altpll";
defparam pll_inst.operation_mode          = "NORMAL";
defparam pll_inst.pll_type                = "AUTO";
defparam pll_inst.port_areset             = "PORT_USED";
defparam pll_inst.port_inclk0             = "PORT_USED";
defparam pll_inst.port_locked             = "PORT_USED";
defparam pll_inst.port_clk0               = "PORT_USED";
defparam pll_inst.port_clk1               = "PORT_UNUSED";
defparam pll_inst.port_clk2               = "PORT_UNUSED";
defparam pll_inst.port_clk3               = "PORT_UNUSED";
defparam pll_inst.port_clk4               = "PORT_UNUSED";
defparam pll_inst.width_clock             = 5;

wire sys_gck;
assign bus_clk = sys_gck;

// Location: BBOX_X22_Y4_N0 FIXED_COORD
alta_gclksw gclksw_inst (
    .resetn(sys_resetn),
    .ena   (1'b1),
    .clkin0(PIN_HSI_in),
    .clkin1(PIN_HSE_in),
    .clkin2(PLL_CLKOUT[0]),
    .clkin3(),
    .select(sys_ctrl_clkSource),
    .clkout(sys_clk));
assign sys_gck = sys_clk;

(* keep = 1 *) wire [1:0]  mem_ahb_htrans;
(* keep = 1 *) wire        mem_ahb_hready;
(* keep = 1 *) wire        mem_ahb_hwrite;
(* keep = 1 *) wire [31:0] mem_ahb_haddr;
(* keep = 1 *) wire [2:0]  mem_ahb_hsize;
(* keep = 1 *) wire [2:0]  mem_ahb_hburst;
(* keep = 1 *) wire [31:0] mem_ahb_hwdata;
(* keep = 1 *) wire        mem_ahb_hreadyout;
(* keep = 1 *) wire        mem_ahb_hresp;
(* keep = 1 *) wire [31:0] mem_ahb_hrdata;

(* keep = 1 *) wire        slave_ahb_hsel;
(* keep = 1 *) wire        slave_ahb_hready;
(* keep = 1 *) wire        slave_ahb_hreadyout;
(* keep = 1 *) wire [1:0]  slave_ahb_htrans;
(* keep = 1 *) wire [2:0]  slave_ahb_hsize;
(* keep = 1 *) wire [2:0]  slave_ahb_hburst;
(* keep = 1 *) wire        slave_ahb_hwrite;
(* keep = 1 *) wire [31:0] slave_ahb_haddr;
(* keep = 1 *) wire [31:0] slave_ahb_hwdata;
(* keep = 1 *) wire        slave_ahb_hresp;
(* keep = 1 *) wire [31:0] slave_ahb_hrdata;

(* keep = 1 *) wire [3:0]  ext_dma_DMACBREQ;
(* keep = 1 *) wire [3:0]  ext_dma_DMACLBREQ;
(* keep = 1 *) wire [3:0]  ext_dma_DMACSREQ;
(* keep = 1 *) wire [3:0]  ext_dma_DMACLSREQ;
(* keep = 1 *) wire [3:0]  ext_dma_DMACCLR;
(* keep = 1 *) wire [3:0]  ext_dma_DMACTC;
(* keep = 1 *) wire [3:0]  local_int;

analog_ip macro_inst(
  .LED_D2             (PIN_31             ),
  .LED_D3             (PIN_32             ),
  .sys_clock          (sys_gck            ),
  .bus_clock          (bus_clk            ),
  .resetn             (sys_resetn         ),
  .stop               (sys_ctrl_stop      ),
  .mem_ahb_htrans     (mem_ahb_htrans     ),
  .mem_ahb_hready     (mem_ahb_hready     ),
  .mem_ahb_hwrite     (mem_ahb_hwrite     ),
  .mem_ahb_haddr      (mem_ahb_haddr      ),
  .mem_ahb_hsize      (mem_ahb_hsize      ),
  .mem_ahb_hburst     (mem_ahb_hburst     ),
  .mem_ahb_hwdata     (mem_ahb_hwdata     ),
  .mem_ahb_hreadyout  (mem_ahb_hreadyout  ),
  .mem_ahb_hresp      (mem_ahb_hresp      ),
  .mem_ahb_hrdata     (mem_ahb_hrdata     ),
  .slave_ahb_hsel     (slave_ahb_hsel     ),
  .slave_ahb_hready   (slave_ahb_hready   ),
  .slave_ahb_hreadyout(slave_ahb_hreadyout),
  .slave_ahb_htrans   (slave_ahb_htrans   ),
  .slave_ahb_hsize    (slave_ahb_hsize    ),
  .slave_ahb_hburst   (slave_ahb_hburst   ),
  .slave_ahb_hwrite   (slave_ahb_hwrite   ),
  .slave_ahb_haddr    (slave_ahb_haddr    ),
  .slave_ahb_hwdata   (slave_ahb_hwdata   ),
  .slave_ahb_hresp    (slave_ahb_hresp    ),
  .slave_ahb_hrdata   (slave_ahb_hrdata   ),
  .ext_dma_DMACBREQ   (ext_dma_DMACBREQ   ),
  .ext_dma_DMACLBREQ  (ext_dma_DMACLBREQ  ),
  .ext_dma_DMACSREQ   (ext_dma_DMACSREQ   ),
  .ext_dma_DMACLSREQ  (ext_dma_DMACLSREQ  ),
  .ext_dma_DMACCLR    (ext_dma_DMACCLR    ),
  .ext_dma_DMACTC     (ext_dma_DMACTC     ),
  .local_int          (local_int          )
);

(* keep = 1 *) wire [7:0] gpio0_io_out_data;
(* keep = 1 *) wire [7:0] gpio0_io_out_en;
(* keep = 1 *) wire [7:0] gpio0_io_in = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};

(* keep = 1 *) wire [7:0] gpio1_io_out_data;
(* keep = 1 *) wire [7:0] gpio1_io_out_en;
(* keep = 1 *) wire [7:0] gpio1_io_in = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};

(* keep = 1 *) wire [7:0] gpio2_io_out_data;
(* keep = 1 *) wire [7:0] gpio2_io_out_en;
(* keep = 1 *) wire [7:0] gpio2_io_in = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};

(* keep = 1 *) wire [7:0] gpio3_io_out_data;
(* keep = 1 *) wire [7:0] gpio3_io_out_en;
(* keep = 1 *) wire [7:0] gpio3_io_in = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};

(* keep = 1 *) wire [7:0] gpio4_io_out_data;
(* keep = 1 *) wire [7:0] gpio4_io_out_en;
(* keep = 1 *) wire [7:0] gpio4_io_in = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};

(* keep = 1 *) wire [7:0] gpio5_io_out_data;
(* keep = 1 *) wire [7:0] gpio5_io_out_en;
(* keep = 1 *) wire [7:0] gpio5_io_in = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};

(* keep = 1 *) wire [7:0] gpio6_io_out_data;
(* keep = 1 *) wire [7:0] gpio6_io_out_en;
(* keep = 1 *) wire [7:0] gpio6_io_in = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};

(* keep = 1 *) wire [7:0] gpio7_io_out_data;
(* keep = 1 *) wire [7:0] gpio7_io_out_en;
(* keep = 1 *) wire [7:0] gpio7_io_in = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};

(* keep = 1 *) wire [7:0] gpio8_io_out_data;
(* keep = 1 *) wire [7:0] gpio8_io_out_en;
(* keep = 1 *) wire [7:0] gpio8_io_in = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};

(* keep = 1 *) wire [7:0] gpio9_io_out_data;
(* keep = 1 *) wire [7:0] gpio9_io_out_en;
(* keep = 1 *) wire [7:0] gpio9_io_in = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};

alta_rv32 rv32(
  .sys_clk            (sys_clk                                         ),
  .sys_ctrl_stop      (sys_ctrl_stop                                   ),
  .sys_ctrl_clkSource (sys_ctrl_clkSource                              ),
  .resetn_out         (sys_resetn                                      ),
  .sys_ctrl_pllEnable (PLL_ENABLE                                      ),
  .sys_ctrl_pllReady  (PLL_LOCK                                        ),
  .ext_resetn         (1'b1                                            ),
  .test_mode          (2'b0                                            ),
  .usb0_xcvr_clk      (usb0_xcvr_clk                                   ),
  .usb0_id            (1'b1                                            ),
  .ext_int            ({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}),
  .mem_ahb_htrans     (mem_ahb_htrans                                  ),
  .mem_ahb_hready     (mem_ahb_hready                                  ),
  .mem_ahb_hwrite     (mem_ahb_hwrite                                  ),
  .mem_ahb_haddr      (mem_ahb_haddr                                   ),
  .mem_ahb_hsize      (mem_ahb_hsize                                   ),
  .mem_ahb_hburst     (mem_ahb_hburst                                  ),
  .mem_ahb_hwdata     (mem_ahb_hwdata                                  ),
  .mem_ahb_hreadyout  (mem_ahb_hreadyout                               ),
  .mem_ahb_hresp      (mem_ahb_hresp                                   ),
  .mem_ahb_hrdata     (mem_ahb_hrdata                                  ),
  .slave_ahb_hsel     (slave_ahb_hsel                                  ),
  .slave_ahb_hready   (slave_ahb_hready                                ),
  .slave_ahb_hreadyout(slave_ahb_hreadyout                             ),
  .slave_ahb_htrans   (slave_ahb_htrans                                ),
  .slave_ahb_hsize    (slave_ahb_hsize                                 ),
  .slave_ahb_hburst   (slave_ahb_hburst                                ),
  .slave_ahb_hwrite   (slave_ahb_hwrite                                ),
  .slave_ahb_haddr    (slave_ahb_haddr                                 ),
  .slave_ahb_hwdata   (slave_ahb_hwdata                                ),
  .slave_ahb_hresp    (slave_ahb_hresp                                 ),
  .slave_ahb_hrdata   (slave_ahb_hrdata                                ),
  .ext_dma_DMACBREQ   (ext_dma_DMACBREQ                                ),
  .ext_dma_DMACLBREQ  (ext_dma_DMACLBREQ                               ),
  .ext_dma_DMACSREQ   (ext_dma_DMACSREQ                                ),
  .ext_dma_DMACLSREQ  (ext_dma_DMACLSREQ                               ),
  .ext_dma_DMACCLR    (ext_dma_DMACCLR                                 ),
  .ext_dma_DMACTC     (ext_dma_DMACTC                                  ),
  .local_int          (local_int                                       ),
  .gpio0_io_in        (gpio0_io_in                                     ),
  .gpio0_io_out_data  (gpio0_io_out_data                               ),
  .gpio0_io_out_en    (gpio0_io_out_en                                 ),
  .gpio1_io_in        (gpio1_io_in                                     ),
  .gpio1_io_out_data  (gpio1_io_out_data                               ),
  .gpio1_io_out_en    (gpio1_io_out_en                                 ),
  .gpio2_io_in        (gpio2_io_in                                     ),
  .gpio2_io_out_data  (gpio2_io_out_data                               ),
  .gpio2_io_out_en    (gpio2_io_out_en                                 ),
  .gpio3_io_in        (gpio3_io_in                                     ),
  .gpio3_io_out_data  (gpio3_io_out_data                               ),
  .gpio3_io_out_en    (gpio3_io_out_en                                 ),
  .gpio4_io_in        (gpio4_io_in                                     ),
  .gpio4_io_out_data  (gpio4_io_out_data                               ),
  .gpio4_io_out_en    (gpio4_io_out_en                                 ),
  .gpio5_io_in        (gpio5_io_in                                     ),
  .gpio5_io_out_data  (gpio5_io_out_data                               ),
  .gpio5_io_out_en    (gpio5_io_out_en                                 ),
  .gpio6_io_in        (gpio6_io_in                                     ),
  .gpio6_io_out_data  (gpio6_io_out_data                               ),
  .gpio6_io_out_en    (gpio6_io_out_en                                 ),
  .gpio7_io_in        (gpio7_io_in                                     ),
  .gpio7_io_out_data  (gpio7_io_out_data                               ),
  .gpio7_io_out_en    (gpio7_io_out_en                                 ),
  .gpio8_io_in        (gpio8_io_in                                     ),
  .gpio8_io_out_data  (gpio8_io_out_data                               ),
  .gpio8_io_out_en    (gpio8_io_out_en                                 ),
  .gpio9_io_in        (gpio9_io_in                                     ),
  .gpio9_io_out_data  (gpio9_io_out_data                               ),
  .gpio9_io_out_en    (gpio9_io_out_en                                 )
);

endmodule

