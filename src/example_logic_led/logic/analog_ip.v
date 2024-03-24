module analog_ip (
  output        LED_D2,
  output        LED_D3,
  input         sys_clock,
  input         bus_clock,
  input         resetn,
  input         stop,
  input  [1:0]  mem_ahb_htrans,
  input         mem_ahb_hready,
  input         mem_ahb_hwrite,
  input  [31:0] mem_ahb_haddr,
  input  [2:0]  mem_ahb_hsize,
  input  [2:0]  mem_ahb_hburst,
  input  [31:0] mem_ahb_hwdata,
  output tri1   mem_ahb_hreadyout,
  output        mem_ahb_hresp,
  output [31:0] mem_ahb_hrdata,
  output        slave_ahb_hsel,
  output tri1   slave_ahb_hready,
  input         slave_ahb_hreadyout,
  output [1:0]  slave_ahb_htrans,
  output [2:0]  slave_ahb_hsize,
  output [2:0]  slave_ahb_hburst,
  output        slave_ahb_hwrite,
  output [31:0] slave_ahb_haddr,
  output [31:0] slave_ahb_hwdata,
  input         slave_ahb_hresp,
  input  [31:0] slave_ahb_hrdata,
  output [3:0]  ext_dma_DMACBREQ,
  output [3:0]  ext_dma_DMACLBREQ,
  output [3:0]  ext_dma_DMACSREQ,
  output [3:0]  ext_dma_DMACLSREQ,
  input  [3:0]  ext_dma_DMACCLR,
  input  [3:0]  ext_dma_DMACTC,
  output [3:0]  local_int
);

led led_output(
.clk (sys_clock),
.LED_CTL2 (LED_D2),
.LED_CTL3 (LED_D3)
);

endmodule


module led (
  input         clk,
  output        LED_CTL2,
  output        LED_CTL3
);
reg LED_2;
reg LED_3;
assign LED_CTL2 = LED_2;
assign LED_CTL3 = LED_3;

reg [31:0] clkcount;
always @ (posedge clk)
	begin
		clkcount <= clkcount+1;
		case(clkcount[24:23])
					0:		LED_2 <= 0;
					1:		LED_2 <= 1;
					2:		LED_3 <= 0;
					3:		LED_3 <= 1;
			endcase
	end

endmodule
