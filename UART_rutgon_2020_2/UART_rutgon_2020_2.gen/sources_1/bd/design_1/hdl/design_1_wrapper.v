//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sun Dec 17 03:36:17 2023
//Host        : DESKTOP-GLV9KF3 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

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
  wire clk_0;
  wire [7:0]data_out_0;
  wire [0:0]rst_n_0;

  design_1 design_1_i
       (.Rx_0(Rx_0),
        .clk_0(clk_0),
        .data_out_0(data_out_0),
        .rst_n_0(rst_n_0));
endmodule
