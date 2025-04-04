//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Thu Nov 30 18:39:29 2023
//Host        : DESKTOP-GLV9KF3 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_0,
    data_out_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  output [7:0]data_out_0;

  wire clk_0_1;
  wire [7:0]connect_UART_RX_0_data_out;
  wire [0:0]vio_0_probe_out0;
  wire [0:0]vio_0_probe_out1;

  assign clk_0_1 = clk_0;
  assign data_out_0[7:0] = connect_UART_RX_0_data_out;
  design_1_connect_UART_RX_0_0 connect_UART_RX_0
       (.Rx(vio_0_probe_out1),
        .clk(clk_0_1),
        .data_out(connect_UART_RX_0_data_out),
        .rst_n(vio_0_probe_out0));
  design_1_ila_0_0 ila_0
       (.clk(clk_0_1),
        .probe0(vio_0_probe_out0),
        .probe1(vio_0_probe_out1),
        .probe2(connect_UART_RX_0_data_out));
  design_1_vio_0_0 vio_0
       (.clk(clk_0_1),
        .probe_in0(connect_UART_RX_0_data_out),
        .probe_out0(vio_0_probe_out0),
        .probe_out1(vio_0_probe_out1));
endmodule
