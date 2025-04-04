// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "connect_UART_RX,Vivado 2020.2" *)
module design_1_connect_UART_RX_0_0(rst_n, Rx, clk, data_out);
  input rst_n;
  input Rx;
  input clk;
  output [7:0]data_out;
endmodule
