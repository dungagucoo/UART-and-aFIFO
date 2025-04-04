// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri May 31 17:11:14 2024
// Host        : DESKTOP-GLV9KF3 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Vivado/_Bai_tap/CSTT/UART_rutgon_2020_2/UART_rutgon_2020_2.sim/sim_1/synth/timing/xsim/tb_connect_UART_RX_time_synth.v
// Design      : design_1_wrapper
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* HW_HANDOFF = "design_1.hwdef" *) (* keep_hierarchy = "soft" *) 
module design_1
   (Rx_0,
    clk_0,
    data_out_0,
    rst_n_0);
  input Rx_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  output [7:0]data_out_0;
  input [0:0]rst_n_0;

  (* MARK_DEBUG *) wire Rx_0_1;
  wire clk_0;
  (* MARK_DEBUG *) wire [7:0]connect_UART_RX_0_data_out;
  (* MARK_DEBUG *) wire probe0_0_1;

  assign Rx_0_1 = Rx_0;
  assign data_out_0[7:0] = connect_UART_RX_0_data_out;
  assign probe0_0_1 = rst_n_0[0];
  (* X_CORE_INFO = "connect_UART_RX,Vivado 2020.2" *) 
  design_1_connect_UART_RX_0_0 connect_UART_RX_0
       (.Rx(Rx_0_1),
        .clk(clk_0),
        .data_out(connect_UART_RX_0_data_out),
        .rst_n(probe0_0_1));
  (* X_CORE_INFO = "ila,Vivado 2020.2" *) 
  design_1_ila_0_0 ila_0
       (.clk(clk_0),
        .probe0(probe0_0_1),
        .probe1(Rx_0_1),
        .probe2(connect_UART_RX_0_data_out));
endmodule

(* X_CORE_INFO = "connect_UART_RX,Vivado 2020.2" *) 
module design_1_connect_UART_RX_0_0
   (rst_n,
    Rx,
    clk,
    data_out);
  input rst_n;
  input Rx;
  input clk;
  output [7:0]data_out;


endmodule

(* X_CORE_INFO = "ila,Vivado 2020.2" *) 
module design_1_ila_0_0
   (clk,
    probe0,
    probe1,
    probe2);
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [7:0]probe2;


endmodule

(* NotValidForBitStream *)
module design_1_wrapper
   (Rx_0,
    clk_0,
    data_out_0,
    rst_n_0);
  input Rx_0;
  input clk_0;
  output [7:0]data_out_0;
  input [0:0]rst_n_0;

  wire Rx_0;
  wire Rx_0_IBUF;
  wire clk_0;
  wire clk_0_IBUF;
  wire [7:0]data_out_0;
  wire [7:0]data_out_0_OBUF;
  wire [0:0]rst_n_0;
  wire [0:0]rst_n_0_IBUF;

initial begin
 $sdf_annotate("tb_connect_UART_RX_time_synth.sdf",,,,"tool_control");
end
  IBUF Rx_0_IBUF_inst
       (.I(Rx_0),
        .O(Rx_0_IBUF));
  IBUF clk_0_IBUF_inst
       (.I(clk_0),
        .O(clk_0_IBUF));
  OBUF \data_out_0_OBUF[0]_inst 
       (.I(data_out_0_OBUF[0]),
        .O(data_out_0[0]));
  OBUF \data_out_0_OBUF[1]_inst 
       (.I(data_out_0_OBUF[1]),
        .O(data_out_0[1]));
  OBUF \data_out_0_OBUF[2]_inst 
       (.I(data_out_0_OBUF[2]),
        .O(data_out_0[2]));
  OBUF \data_out_0_OBUF[3]_inst 
       (.I(data_out_0_OBUF[3]),
        .O(data_out_0[3]));
  OBUF \data_out_0_OBUF[4]_inst 
       (.I(data_out_0_OBUF[4]),
        .O(data_out_0[4]));
  OBUF \data_out_0_OBUF[5]_inst 
       (.I(data_out_0_OBUF[5]),
        .O(data_out_0[5]));
  OBUF \data_out_0_OBUF[6]_inst 
       (.I(data_out_0_OBUF[6]),
        .O(data_out_0[6]));
  OBUF \data_out_0_OBUF[7]_inst 
       (.I(data_out_0_OBUF[7]),
        .O(data_out_0[7]));
  (* HW_HANDOFF = "design_1.hwdef" *) 
  design_1 design_1_i
       (.Rx_0(Rx_0_IBUF),
        .clk_0(clk_0_IBUF),
        .data_out_0(data_out_0_OBUF),
        .rst_n_0(rst_n_0_IBUF));
  IBUF \rst_n_0_IBUF[0]_inst 
       (.I(rst_n_0),
        .O(rst_n_0_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
