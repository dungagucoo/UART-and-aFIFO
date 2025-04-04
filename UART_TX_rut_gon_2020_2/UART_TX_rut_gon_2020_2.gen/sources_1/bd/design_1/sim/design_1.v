//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Mon Dec  4 19:09:25 2023
//Host        : DESKTOP-GLV9KF3 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_0,
    data_in_0,
    data_out_0,
    rst_n_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  input [7:0]data_in_0;
  output data_out_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_n_0;

  wire clk_0_1;
  wire connect_UART_TX_0_data_out;
  wire [7:0]data_in_0_1;
  wire rst_n_0_1;
  wire [0:0]tx_start_0_1;

  assign clk_0_1 = clk_0;
  assign data_in_0_1 = data_in_0[7:0];
  assign data_out_0 = connect_UART_TX_0_data_out;
  assign rst_n_0_1 = rst_n_0;
  design_1_connect_UART_TX_0_0 connect_UART_TX_0
       (.clk(clk_0_1),
        .data_in(data_in_0_1),
        .data_out(connect_UART_TX_0_data_out),
        .rst_n(rst_n_0_1),
        .tx_start(tx_start_0_1));
  design_1_ila_0_0 ila_0
       (.clk(clk_0_1),
        .probe0(rst_n_0_1),
        .probe1(tx_start_0_1),
        .probe2(data_in_0_1),
        .probe3(connect_UART_TX_0_data_out));
  design_1_vio_0_0 vio_0
       (.clk(clk_0_1),
        .probe_in0(connect_UART_TX_0_data_out),
        .probe_out0(tx_start_0_1));
endmodule
