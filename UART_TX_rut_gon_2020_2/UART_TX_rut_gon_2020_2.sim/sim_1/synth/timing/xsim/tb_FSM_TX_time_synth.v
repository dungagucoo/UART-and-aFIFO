// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri May 31 17:06:10 2024
// Host        : DESKTOP-GLV9KF3 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Vivado/_Bai_tap/CSTT/UART_TX_rut_gon_2020_2/UART_TX_rut_gon_2020_2.sim/sim_1/synth/timing/xsim/tb_FSM_TX_time_synth.v
// Design      : design_1_wrapper
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* HW_HANDOFF = "design_1.hwdef" *) (* keep_hierarchy = "soft" *) 
module design_1
   (clk_0,
    data_in_0,
    data_out_0,
    rst_n_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  input [7:0]data_in_0;
  output data_out_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_n_0;

  wire clk_0;
  (* MARK_DEBUG *) wire connect_UART_TX_0_data_out;
  (* MARK_DEBUG *) wire [7:0]data_in_0_1;
  (* MARK_DEBUG *) wire rst_n_0_1;
  (* MARK_DEBUG *) wire tx_start_0_1;

  assign data_in_0_1 = data_in_0[7:0];
  assign data_out_0 = connect_UART_TX_0_data_out;
  assign rst_n_0_1 = rst_n_0;
  (* X_CORE_INFO = "connect_UART_TX,Vivado 2020.2" *) 
  design_1_connect_UART_TX_0_0 connect_UART_TX_0
       (.clk(clk_0),
        .data_in(data_in_0_1),
        .data_out(connect_UART_TX_0_data_out),
        .rst_n(rst_n_0_1),
        .tx_start(tx_start_0_1));
  (* X_CORE_INFO = "ila,Vivado 2020.2" *) 
  design_1_ila_0_0 ila_0
       (.clk(clk_0),
        .probe0(rst_n_0_1),
        .probe1(tx_start_0_1),
        .probe2(data_in_0_1),
        .probe3(connect_UART_TX_0_data_out));
  (* X_CORE_INFO = "vio,Vivado 2020.2" *) 
  design_1_vio_0_0 vio_0
       (.clk(clk_0),
        .probe_in0(connect_UART_TX_0_data_out),
        .probe_out0(tx_start_0_1));
endmodule

(* X_CORE_INFO = "connect_UART_TX,Vivado 2020.2" *) 
module design_1_connect_UART_TX_0_0
   (rst_n,
    tx_start,
    clk,
    data_in,
    data_out);
  input rst_n;
  input tx_start;
  input clk;
  input [7:0]data_in;
  output data_out;


endmodule

(* X_CORE_INFO = "ila,Vivado 2020.2" *) 
module design_1_ila_0_0
   (clk,
    probe0,
    probe1,
    probe2,
    probe3);
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [7:0]probe2;
  input [0:0]probe3;


endmodule

(* X_CORE_INFO = "vio,Vivado 2020.2" *) 
module design_1_vio_0_0
   (clk,
    probe_in0,
    probe_out0);
  input clk;
  input [0:0]probe_in0;
  output [0:0]probe_out0;


endmodule

(* NotValidForBitStream *)
module design_1_wrapper
   (clk_0,
    data_in_0,
    data_out_0,
    rst_n_0);
  input clk_0;
  input [7:0]data_in_0;
  output data_out_0;
  input rst_n_0;

  wire clk_0;
  wire clk_0_IBUF;
  wire [7:0]data_in_0;
  wire [7:0]data_in_0_IBUF;
  wire data_out_0;
  wire data_out_0_OBUF;
  wire rst_n_0;
  wire rst_n_0_IBUF;

initial begin
 $sdf_annotate("tb_FSM_TX_time_synth.sdf",,,,"tool_control");
end
  IBUF clk_0_IBUF_inst
       (.I(clk_0),
        .O(clk_0_IBUF));
  IBUF \data_in_0_IBUF[0]_inst 
       (.I(data_in_0[0]),
        .O(data_in_0_IBUF[0]));
  IBUF \data_in_0_IBUF[1]_inst 
       (.I(data_in_0[1]),
        .O(data_in_0_IBUF[1]));
  IBUF \data_in_0_IBUF[2]_inst 
       (.I(data_in_0[2]),
        .O(data_in_0_IBUF[2]));
  IBUF \data_in_0_IBUF[3]_inst 
       (.I(data_in_0[3]),
        .O(data_in_0_IBUF[3]));
  IBUF \data_in_0_IBUF[4]_inst 
       (.I(data_in_0[4]),
        .O(data_in_0_IBUF[4]));
  IBUF \data_in_0_IBUF[5]_inst 
       (.I(data_in_0[5]),
        .O(data_in_0_IBUF[5]));
  IBUF \data_in_0_IBUF[6]_inst 
       (.I(data_in_0[6]),
        .O(data_in_0_IBUF[6]));
  IBUF \data_in_0_IBUF[7]_inst 
       (.I(data_in_0[7]),
        .O(data_in_0_IBUF[7]));
  OBUF data_out_0_OBUF_inst
       (.I(data_out_0_OBUF),
        .O(data_out_0));
  (* HW_HANDOFF = "design_1.hwdef" *) 
  design_1 design_1_i
       (.clk_0(clk_0_IBUF),
        .data_in_0(data_in_0_IBUF),
        .data_out_0(data_out_0_OBUF),
        .rst_n_0(rst_n_0_IBUF));
  IBUF rst_n_0_IBUF_inst
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
