//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Mon Dec  4 19:09:25 2023
//Host        : DESKTOP-GLV9KF3 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

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
  wire [7:0]data_in_0;
  wire data_out_0;
  wire rst_n_0;

  design_1 design_1_i
       (.clk_0(clk_0),
        .data_in_0(data_in_0),
        .data_out_0(data_out_0),
        .rst_n_0(rst_n_0));
endmodule
