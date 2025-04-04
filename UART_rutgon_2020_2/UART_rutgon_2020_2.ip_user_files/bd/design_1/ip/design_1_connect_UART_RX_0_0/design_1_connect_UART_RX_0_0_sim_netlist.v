// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Nov 30 17:38:32 2023
// Host        : DESKTOP-GLV9KF3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/_Bai_tap/CSTT/UART_rutgon_2020_2/UART_rutgon_2020_2.gen/sources_1/bd/design_1/ip/design_1_connect_UART_RX_0_0/design_1_connect_UART_RX_0_0_sim_netlist.v
// Design      : design_1_connect_UART_RX_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_connect_UART_RX_0_0,connect_UART_RX,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "connect_UART_RX,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_connect_UART_RX_0_0
   (rst_n,
    Rx,
    clk,
    data_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input Rx;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
  output [7:0]data_out;

  wire Rx;
  wire clk;
  wire [7:0]data_out;
  wire rst_n;

  design_1_connect_UART_RX_0_0_connect_UART_RX inst
       (.Rx(Rx),
        .clk(clk),
        .data_out(data_out),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "FSM_RX" *) 
module design_1_connect_UART_RX_0_0_FSM_RX
   (E,
    shift_enable_reg_0,
    Rx,
    clk_16,
    rst_n,
    \FSM_sequential_state_reg[0]_0 );
  output [0:0]E;
  output [0:0]shift_enable_reg_0;
  input Rx;
  input clk_16;
  input rst_n;
  input \FSM_sequential_state_reg[0]_0 ;

  wire [0:0]E;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire Rx;
  wire Rx_reg;
  wire bit_counter_n_0;
  wire bit_counter_n_1;
  wire bit_counter_n_2;
  wire clk_16;
  wire en_16;
  wire en_16_i_1_n_0;
  wire en_bit;
  wire rst_16;
  wire rst_1601_out;
  wire rst_16_i_4_n_0;
  wire rst_bit;
  wire rst_n;
  wire sample_counter_n_0;
  wire sample_counter_n_1;
  wire sample_counter_n_2;
  wire sample_counter_n_3;
  wire sample_counter_n_4;
  wire [0:0]shift_enable_reg_0;
  wire [1:0]state__0;

  (* FSM_ENCODED_STATES = "start:01,idle:00,receive_data:10" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk_16),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[0]_0 ),
        .D(bit_counter_n_1),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "start:01,idle:00,receive_data:10" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk_16),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[0]_0 ),
        .D(bit_counter_n_2),
        .Q(state__0[1]));
  FDRE Rx_reg_reg
       (.C(clk_16),
        .CE(1'b1),
        .D(Rx),
        .Q(Rx_reg),
        .R(1'b0));
  FDRE WE_reg
       (.C(clk_16),
        .CE(1'b1),
        .D(bit_counter_n_0),
        .Q(E),
        .R(1'b0));
  design_1_connect_UART_RX_0_0_counter bit_counter
       (.E(E),
        .\FSM_sequential_state_reg[0] (sample_counter_n_3),
        .Rx(Rx),
        .Rx_0(bit_counter_n_2),
        .Rx_reg(Rx_reg),
        .Rx_reg_reg(bit_counter_n_1),
        .clk_16(clk_16),
        .en_bit(en_bit),
        .rst_bit(rst_bit),
        .rst_n(rst_n),
        .rst_n_0(bit_counter_n_0),
        .state__0(state__0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000008)) 
    en_16_i_1
       (.I0(Rx_reg),
        .I1(rst_n),
        .I2(state__0[0]),
        .I3(Rx),
        .I4(state__0[1]),
        .I5(en_16),
        .O(en_16_i_1_n_0));
  FDRE en_16_reg
       (.C(clk_16),
        .CE(1'b1),
        .D(en_16_i_1_n_0),
        .Q(en_16),
        .R(1'b0));
  FDRE en_bit_reg
       (.C(clk_16),
        .CE(1'b1),
        .D(sample_counter_n_1),
        .Q(en_bit),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rst_16_i_2
       (.I0(Rx_reg),
        .I1(Rx),
        .O(rst_1601_out));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    rst_16_i_4
       (.I0(state__0[1]),
        .I1(Rx),
        .O(rst_16_i_4_n_0));
  FDRE rst_16_reg
       (.C(clk_16),
        .CE(1'b1),
        .D(sample_counter_n_0),
        .Q(rst_16),
        .R(1'b0));
  FDRE rst_bit_reg
       (.C(clk_16),
        .CE(1'b1),
        .D(sample_counter_n_2),
        .Q(rst_bit),
        .R(1'b0));
  design_1_connect_UART_RX_0_0_counter_0 sample_counter
       (.\FSM_sequential_state_reg[0] (sample_counter_n_1),
        .\FSM_sequential_state_reg[0]_0 (sample_counter_n_2),
        .\FSM_sequential_state_reg[1] (sample_counter_n_0),
        .Rx(Rx),
        .clk_16(clk_16),
        .\cnt_reg[3]_0 (sample_counter_n_3),
        .\cnt_reg[3]_1 (sample_counter_n_4),
        .en_16(en_16),
        .en_bit(en_bit),
        .rst_16(rst_16),
        .rst_1601_out(rst_1601_out),
        .rst_16_reg(rst_16_i_4_n_0),
        .rst_bit(rst_bit),
        .rst_n(rst_n),
        .shift_enable_reg(shift_enable_reg_0),
        .state__0(state__0));
  FDRE shift_enable_reg
       (.C(clk_16),
        .CE(1'b1),
        .D(sample_counter_n_4),
        .Q(shift_enable_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "connect_UART_RX" *) 
module design_1_connect_UART_RX_0_0_connect_UART_RX
   (data_out,
    Rx,
    clk,
    rst_n);
  output [7:0]data_out;
  input Rx;
  input clk;
  input rst_n;

  wire Rx;
  wire WE;
  wire clk;
  wire clk_16;
  wire [7:0]data_out;
  wire div_clk_n_1;
  wire rst_n;
  wire shift_enable;
  wire [7:0]shift_value;

  design_1_connect_UART_RX_0_0_reg Data_reg
       (.E(WE),
        .Q(shift_value),
        .\Q_reg[7]_0 (div_clk_n_1),
        .clk_16(clk_16),
        .data_out(data_out));
  design_1_connect_UART_RX_0_0_FSM_RX FSM_UART_RX
       (.E(WE),
        .\FSM_sequential_state_reg[0]_0 (div_clk_n_1),
        .Rx(Rx),
        .clk_16(clk_16),
        .rst_n(rst_n),
        .shift_enable_reg_0(shift_enable));
  design_1_connect_UART_RX_0_0_freq_division div_clk
       (.clk(clk),
        .clk_16(clk_16),
        .rst_n(rst_n),
        .rst_n_0(div_clk_n_1));
  design_1_connect_UART_RX_0_0_shifter shifter_RX
       (.CLK(clk_16),
        .E(shift_enable),
        .Q(shift_value),
        .Rx(Rx),
        .\shift_value_reg[0]_0 (div_clk_n_1));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module design_1_connect_UART_RX_0_0_counter
   (rst_n_0,
    Rx_reg_reg,
    Rx_0,
    en_bit,
    clk_16,
    rst_n,
    state__0,
    E,
    Rx_reg,
    Rx,
    \FSM_sequential_state_reg[0] ,
    rst_bit);
  output rst_n_0;
  output Rx_reg_reg;
  output Rx_0;
  input en_bit;
  input clk_16;
  input rst_n;
  input [1:0]state__0;
  input [0:0]E;
  input Rx_reg;
  input Rx;
  input \FSM_sequential_state_reg[0] ;
  input rst_bit;

  wire [0:0]E;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire Rx;
  wire Rx_0;
  wire Rx_reg;
  wire Rx_reg_reg;
  wire clk_16;
  wire \cnt[3]_i_2__0_n_0 ;
  wire [3:0]cnt_bit;
  wire en_bit;
  wire [3:0]plusOp__0;
  wire rst_bit;
  wire rst_n;
  wire rst_n_0;
  wire [1:0]state__0;

  LUT6 #(
    .INIT(64'h555500000055AEAE)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(Rx_reg),
        .I2(Rx),
        .I3(\FSM_sequential_state_reg[0] ),
        .I4(state__0[0]),
        .I5(state__0[1]),
        .O(Rx_reg_reg));
  LUT5 #(
    .INIT(32'h55553200)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(Rx),
        .I2(\FSM_sequential_state_reg[0] ),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .O(Rx_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(cnt_bit[3]),
        .I1(cnt_bit[2]),
        .I2(cnt_bit[0]),
        .I3(cnt_bit[1]),
        .I4(state__0[0]),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    WE_i_1
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(rst_n),
        .I2(state__0[0]),
        .I3(E),
        .O(rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__0 
       (.I0(cnt_bit[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1__0 
       (.I0(cnt_bit[0]),
        .I1(cnt_bit[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1__0 
       (.I0(cnt_bit[1]),
        .I1(cnt_bit[0]),
        .I2(cnt_bit[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1__0 
       (.I0(cnt_bit[2]),
        .I1(cnt_bit[0]),
        .I2(cnt_bit[1]),
        .I3(cnt_bit[3]),
        .O(plusOp__0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[3]_i_2__0 
       (.I0(rst_bit),
        .O(\cnt[3]_i_2__0_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk_16),
        .CE(en_bit),
        .CLR(\cnt[3]_i_2__0_n_0 ),
        .D(plusOp__0[0]),
        .Q(cnt_bit[0]));
  FDCE \cnt_reg[1] 
       (.C(clk_16),
        .CE(en_bit),
        .CLR(\cnt[3]_i_2__0_n_0 ),
        .D(plusOp__0[1]),
        .Q(cnt_bit[1]));
  FDCE \cnt_reg[2] 
       (.C(clk_16),
        .CE(en_bit),
        .CLR(\cnt[3]_i_2__0_n_0 ),
        .D(plusOp__0[2]),
        .Q(cnt_bit[2]));
  FDCE \cnt_reg[3] 
       (.C(clk_16),
        .CE(en_bit),
        .CLR(\cnt[3]_i_2__0_n_0 ),
        .D(plusOp__0[3]),
        .Q(cnt_bit[3]));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module design_1_connect_UART_RX_0_0_counter_0
   (\FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[0] ,
    \FSM_sequential_state_reg[0]_0 ,
    \cnt_reg[3]_0 ,
    \cnt_reg[3]_1 ,
    en_16,
    clk_16,
    rst_1601_out,
    state__0,
    rst_n,
    rst_16,
    en_bit,
    Rx,
    rst_bit,
    shift_enable_reg,
    rst_16_reg);
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[0] ;
  output \FSM_sequential_state_reg[0]_0 ;
  output \cnt_reg[3]_0 ;
  output \cnt_reg[3]_1 ;
  input en_16;
  input clk_16;
  input rst_1601_out;
  input [1:0]state__0;
  input rst_n;
  input rst_16;
  input en_bit;
  input Rx;
  input rst_bit;
  input [0:0]shift_enable_reg;
  input rst_16_reg;

  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[1] ;
  wire Rx;
  wire clk_16;
  wire \cnt[3]_i_2_n_0 ;
  wire [3:0]cnt_16;
  wire \cnt_reg[3]_0 ;
  wire \cnt_reg[3]_1 ;
  wire en_16;
  wire en_bit;
  wire en_bit0;
  wire en_bit_i_2_n_0;
  wire [3:0]plusOp;
  wire rst_16;
  wire rst_1601_out;
  wire rst_16_i_3_n_0;
  wire rst_16_reg;
  wire rst_bit;
  wire rst_n;
  wire [0:0]shift_enable_reg;
  wire [1:0]state__0;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(cnt_16[3]),
        .I1(cnt_16[1]),
        .I2(cnt_16[2]),
        .I3(cnt_16[0]),
        .O(\cnt_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_16[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_16[0]),
        .I1(cnt_16[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt_16[1]),
        .I1(cnt_16[0]),
        .I2(cnt_16[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1 
       (.I0(cnt_16[1]),
        .I1(cnt_16[0]),
        .I2(cnt_16[2]),
        .I3(cnt_16[3]),
        .O(plusOp[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[3]_i_2 
       (.I0(rst_16),
        .O(\cnt[3]_i_2_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk_16),
        .CE(en_16),
        .CLR(\cnt[3]_i_2_n_0 ),
        .D(plusOp[0]),
        .Q(cnt_16[0]));
  FDCE \cnt_reg[1] 
       (.C(clk_16),
        .CE(en_16),
        .CLR(\cnt[3]_i_2_n_0 ),
        .D(plusOp[1]),
        .Q(cnt_16[1]));
  FDCE \cnt_reg[2] 
       (.C(clk_16),
        .CE(en_16),
        .CLR(\cnt[3]_i_2_n_0 ),
        .D(plusOp[2]),
        .Q(cnt_16[2]));
  FDCE \cnt_reg[3] 
       (.C(clk_16),
        .CE(en_16),
        .CLR(\cnt[3]_i_2_n_0 ),
        .D(plusOp[3]),
        .Q(cnt_16[3]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    en_bit_i_1
       (.I0(state__0[0]),
        .I1(cnt_16[3]),
        .I2(en_bit_i_2_n_0),
        .I3(en_bit0),
        .I4(en_bit),
        .O(\FSM_sequential_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    en_bit_i_2
       (.I0(cnt_16[2]),
        .I1(cnt_16[0]),
        .I2(cnt_16[1]),
        .O(en_bit_i_2_n_0));
  LUT5 #(
    .INIT(32'h30300080)) 
    en_bit_i_3
       (.I0(\cnt_reg[3]_0 ),
        .I1(state__0[0]),
        .I2(rst_n),
        .I3(Rx),
        .I4(state__0[1]),
        .O(en_bit0));
  LUT6 #(
    .INIT(64'h0FEE0FEF00EE00E0)) 
    rst_16_i_1
       (.I0(rst_1601_out),
        .I1(state__0[1]),
        .I2(rst_16_i_3_n_0),
        .I3(state__0[0]),
        .I4(rst_n),
        .I5(rst_16),
        .O(\FSM_sequential_state_reg[1] ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    rst_16_i_3
       (.I0(rst_n),
        .I1(rst_16_reg),
        .I2(cnt_16[0]),
        .I3(cnt_16[2]),
        .I4(cnt_16[1]),
        .I5(cnt_16[3]),
        .O(rst_16_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFAAFFFF00080000)) 
    rst_bit_i_1
       (.I0(state__0[0]),
        .I1(\cnt_reg[3]_0 ),
        .I2(Rx),
        .I3(state__0[1]),
        .I4(rst_n),
        .I5(rst_bit),
        .O(\FSM_sequential_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFF08FF00000800)) 
    shift_enable_i_1
       (.I0(cnt_16[3]),
        .I1(state__0[1]),
        .I2(en_bit_i_2_n_0),
        .I3(rst_n),
        .I4(state__0[0]),
        .I5(shift_enable_reg),
        .O(\cnt_reg[3]_1 ));
endmodule

(* ORIG_REF_NAME = "freq_division" *) 
module design_1_connect_UART_RX_0_0_freq_division
   (clk_16,
    rst_n_0,
    clk,
    rst_n);
  output clk_16;
  output rst_n_0;
  input clk;
  input rst_n;

  wire clk;
  wire clk_16;
  wire [9:0]cnt_cur;
  wire \cnt_cur[4]_i_1_n_0 ;
  wire \cnt_cur[9]_i_2_n_0 ;
  wire \cnt_cur[9]_i_3_n_0 ;
  wire \cnt_cur[9]_i_4_n_0 ;
  wire \cnt_cur[9]_i_5_n_0 ;
  wire [9:0]cnt_nx;
  wire rst_n;
  wire rst_n_0;
  wire tmp_i_1_n_0;
  wire tmp_i_2_n_0;
  wire tmp_i_3_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \Q[7]_i_1 
       (.I0(rst_n),
        .O(rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_cur[0]_i_1 
       (.I0(cnt_cur[0]),
        .O(cnt_nx[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_cur[1]_i_1 
       (.I0(cnt_cur[0]),
        .I1(cnt_cur[1]),
        .O(cnt_nx[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt_cur[2]_i_1 
       (.I0(\cnt_cur[9]_i_2_n_0 ),
        .I1(cnt_cur[0]),
        .I2(cnt_cur[1]),
        .I3(cnt_cur[2]),
        .O(cnt_nx[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt_cur[3]_i_1 
       (.I0(\cnt_cur[9]_i_2_n_0 ),
        .I1(cnt_cur[1]),
        .I2(cnt_cur[0]),
        .I3(cnt_cur[2]),
        .I4(cnt_cur[3]),
        .O(cnt_nx[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt_cur[4]_i_1 
       (.I0(cnt_cur[4]),
        .I1(cnt_cur[3]),
        .I2(cnt_cur[1]),
        .I3(cnt_cur[0]),
        .I4(cnt_cur[2]),
        .O(\cnt_cur[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_cur[5]_i_1 
       (.I0(cnt_cur[3]),
        .I1(cnt_cur[1]),
        .I2(cnt_cur[0]),
        .I3(cnt_cur[2]),
        .I4(cnt_cur[4]),
        .I5(cnt_cur[5]),
        .O(cnt_nx[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_cur[6]_i_1 
       (.I0(cnt_cur[6]),
        .I1(\cnt_cur[9]_i_3_n_0 ),
        .O(cnt_nx[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt_cur[7]_i_1 
       (.I0(\cnt_cur[9]_i_2_n_0 ),
        .I1(cnt_cur[6]),
        .I2(\cnt_cur[9]_i_3_n_0 ),
        .I3(cnt_cur[7]),
        .O(cnt_nx[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_cur[8]_i_1 
       (.I0(cnt_cur[8]),
        .I1(cnt_cur[6]),
        .I2(\cnt_cur[9]_i_3_n_0 ),
        .I3(cnt_cur[7]),
        .O(cnt_nx[8]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt_cur[9]_i_1 
       (.I0(\cnt_cur[9]_i_2_n_0 ),
        .I1(cnt_cur[8]),
        .I2(cnt_cur[6]),
        .I3(\cnt_cur[9]_i_3_n_0 ),
        .I4(cnt_cur[7]),
        .I5(cnt_cur[9]),
        .O(cnt_nx[9]));
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \cnt_cur[9]_i_2 
       (.I0(\cnt_cur[9]_i_4_n_0 ),
        .I1(cnt_cur[7]),
        .I2(cnt_cur[8]),
        .I3(cnt_cur[3]),
        .I4(\cnt_cur[9]_i_5_n_0 ),
        .O(\cnt_cur[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt_cur[9]_i_3 
       (.I0(cnt_cur[5]),
        .I1(cnt_cur[4]),
        .I2(cnt_cur[2]),
        .I3(cnt_cur[0]),
        .I4(cnt_cur[1]),
        .I5(cnt_cur[3]),
        .O(\cnt_cur[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \cnt_cur[9]_i_4 
       (.I0(cnt_cur[1]),
        .I1(cnt_cur[0]),
        .I2(cnt_cur[9]),
        .I3(cnt_cur[6]),
        .O(\cnt_cur[9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_cur[9]_i_5 
       (.I0(cnt_cur[4]),
        .I1(cnt_cur[2]),
        .I2(cnt_cur[5]),
        .O(\cnt_cur[9]_i_5_n_0 ));
  FDPE \cnt_cur_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_nx[0]),
        .PRE(rst_n_0),
        .Q(cnt_cur[0]));
  FDCE \cnt_cur_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt_nx[1]),
        .Q(cnt_cur[1]));
  FDCE \cnt_cur_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt_nx[2]),
        .Q(cnt_cur[2]));
  FDCE \cnt_cur_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt_nx[3]),
        .Q(cnt_cur[3]));
  FDCE \cnt_cur_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt_cur[4]_i_1_n_0 ),
        .Q(cnt_cur[4]));
  FDCE \cnt_cur_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt_nx[5]),
        .Q(cnt_cur[5]));
  FDCE \cnt_cur_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt_nx[6]),
        .Q(cnt_cur[6]));
  FDCE \cnt_cur_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt_nx[7]),
        .Q(cnt_cur[7]));
  FDCE \cnt_cur_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt_nx[8]),
        .Q(cnt_cur[8]));
  FDCE \cnt_cur_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt_nx[9]),
        .Q(cnt_cur[9]));
  LUT6 #(
    .INIT(64'hAAAAAA8A55555575)) 
    tmp_i_1
       (.I0(\cnt_cur[9]_i_2_n_0 ),
        .I1(cnt_cur[5]),
        .I2(cnt_cur[2]),
        .I3(cnt_cur[4]),
        .I4(tmp_i_2_n_0),
        .I5(clk_16),
        .O(tmp_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tmp_i_2
       (.I0(cnt_cur[0]),
        .I1(cnt_cur[7]),
        .I2(cnt_cur[9]),
        .I3(tmp_i_3_n_0),
        .O(tmp_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    tmp_i_3
       (.I0(cnt_cur[6]),
        .I1(cnt_cur[3]),
        .I2(cnt_cur[1]),
        .I3(cnt_cur[8]),
        .O(tmp_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tmp_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(tmp_i_1_n_0),
        .Q(clk_16));
endmodule

(* ORIG_REF_NAME = "reg" *) 
module design_1_connect_UART_RX_0_0_reg
   (data_out,
    E,
    Q,
    clk_16,
    \Q_reg[7]_0 );
  output [7:0]data_out;
  input [0:0]E;
  input [7:0]Q;
  input clk_16;
  input \Q_reg[7]_0 ;

  wire [0:0]E;
  wire [7:0]Q;
  wire \Q_reg[7]_0 ;
  wire clk_16;
  wire [7:0]data_out;

  FDCE \Q_reg[0] 
       (.C(clk_16),
        .CE(E),
        .CLR(\Q_reg[7]_0 ),
        .D(Q[0]),
        .Q(data_out[0]));
  FDCE \Q_reg[1] 
       (.C(clk_16),
        .CE(E),
        .CLR(\Q_reg[7]_0 ),
        .D(Q[1]),
        .Q(data_out[1]));
  FDCE \Q_reg[2] 
       (.C(clk_16),
        .CE(E),
        .CLR(\Q_reg[7]_0 ),
        .D(Q[2]),
        .Q(data_out[2]));
  FDCE \Q_reg[3] 
       (.C(clk_16),
        .CE(E),
        .CLR(\Q_reg[7]_0 ),
        .D(Q[3]),
        .Q(data_out[3]));
  FDCE \Q_reg[4] 
       (.C(clk_16),
        .CE(E),
        .CLR(\Q_reg[7]_0 ),
        .D(Q[4]),
        .Q(data_out[4]));
  FDCE \Q_reg[5] 
       (.C(clk_16),
        .CE(E),
        .CLR(\Q_reg[7]_0 ),
        .D(Q[5]),
        .Q(data_out[5]));
  FDCE \Q_reg[6] 
       (.C(clk_16),
        .CE(E),
        .CLR(\Q_reg[7]_0 ),
        .D(Q[6]),
        .Q(data_out[6]));
  FDCE \Q_reg[7] 
       (.C(clk_16),
        .CE(E),
        .CLR(\Q_reg[7]_0 ),
        .D(Q[7]),
        .Q(data_out[7]));
endmodule

(* ORIG_REF_NAME = "shifter" *) 
module design_1_connect_UART_RX_0_0_shifter
   (Q,
    E,
    Rx,
    CLK,
    \shift_value_reg[0]_0 );
  output [7:0]Q;
  input [0:0]E;
  input Rx;
  input CLK;
  input \shift_value_reg[0]_0 ;

  wire CLK;
  wire [0:0]E;
  wire [7:0]Q;
  wire Rx;
  wire \shift_value_reg[0]_0 ;

  FDPE \shift_value_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .PRE(\shift_value_reg[0]_0 ),
        .Q(Q[0]));
  FDPE \shift_value_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .PRE(\shift_value_reg[0]_0 ),
        .Q(Q[1]));
  FDPE \shift_value_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .PRE(\shift_value_reg[0]_0 ),
        .Q(Q[2]));
  FDPE \shift_value_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .PRE(\shift_value_reg[0]_0 ),
        .Q(Q[3]));
  FDPE \shift_value_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .PRE(\shift_value_reg[0]_0 ),
        .Q(Q[4]));
  FDPE \shift_value_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .PRE(\shift_value_reg[0]_0 ),
        .Q(Q[5]));
  FDPE \shift_value_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .PRE(\shift_value_reg[0]_0 ),
        .Q(Q[6]));
  FDPE \shift_value_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Rx),
        .PRE(\shift_value_reg[0]_0 ),
        .Q(Q[7]));
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
