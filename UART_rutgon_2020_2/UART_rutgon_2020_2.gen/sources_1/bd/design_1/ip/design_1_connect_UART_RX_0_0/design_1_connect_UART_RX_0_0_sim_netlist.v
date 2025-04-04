// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Dec 17 03:37:32 2023
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
    rst_16_reg_0,
    rst_n);
  output [0:0]E;
  output [0:0]shift_enable_reg_0;
  input Rx;
  input clk_16;
  input rst_16_reg_0;
  input rst_n;

  wire [0:0]E;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire Rx;
  wire Rx_reg;
  wire bit_counter_n_0;
  wire bit_counter_n_1;
  wire bit_counter_n_2;
  wire bit_counter_n_3;
  wire clk_16;
  wire en_16;
  wire en_16_i_1_n_0;
  wire en_bit;
  wire rst_16;
  wire rst_160;
  wire rst_16_i_3_n_0;
  wire rst_16_reg_0;
  wire rst_bit;
  wire rst_bit_0;
  wire rst_n;
  wire sample_counter_n_0;
  wire sample_counter_n_1;
  wire sample_counter_n_2;
  wire sample_counter_n_3;
  wire sample_counter_n_4;
  wire [0:0]shift_enable_reg_0;

  (* FSM_ENCODED_STATES = "start:010,idle:001,receive_data:100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_16),
        .CE(1'b1),
        .D(bit_counter_n_3),
        .PRE(rst_16_reg_0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "start:010,idle:001,receive_data:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_16),
        .CE(1'b1),
        .CLR(rst_16_reg_0),
        .D(bit_counter_n_2),
        .Q(rst_bit_0));
  (* FSM_ENCODED_STATES = "start:010,idle:001,receive_data:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_16),
        .CE(1'b1),
        .CLR(rst_16_reg_0),
        .D(bit_counter_n_1),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
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
        .\FSM_onehot_state_reg[0] (bit_counter_n_2),
        .\FSM_onehot_state_reg[0]_0 (sample_counter_n_4),
        .\FSM_onehot_state_reg[1] (bit_counter_n_1),
        .\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg_n_0_[0] ),
        .\FSM_onehot_state_reg[2] (bit_counter_n_3),
        .\FSM_onehot_state_reg[2]_0 (\FSM_onehot_state_reg_n_0_[2] ),
        .Rx(Rx),
        .Rx_reg(Rx_reg),
        .clk_16(clk_16),
        .en_bit(en_bit),
        .rst_bit(rst_bit),
        .rst_bit_0(rst_bit_0),
        .rst_n(rst_n),
        .rst_n_0(bit_counter_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFF0800)) 
    en_16_i_1
       (.I0(rst_n),
        .I1(Rx_reg),
        .I2(Rx),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(en_16),
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rst_16_i_2
       (.I0(Rx_reg),
        .I1(Rx),
        .O(rst_160));
  LUT2 #(
    .INIT(4'h8)) 
    rst_16_i_3
       (.I0(rst_bit_0),
        .I1(Rx),
        .O(rst_16_i_3_n_0));
  FDCE rst_16_reg
       (.C(clk_16),
        .CE(1'b1),
        .CLR(rst_16_reg_0),
        .D(sample_counter_n_0),
        .Q(rst_16));
  FDCE rst_bit_reg
       (.C(clk_16),
        .CE(1'b1),
        .CLR(rst_16_reg_0),
        .D(sample_counter_n_2),
        .Q(rst_bit));
  design_1_connect_UART_RX_0_0_counter_0 sample_counter
       (.\FSM_onehot_state_reg[0] (sample_counter_n_0),
        .\FSM_onehot_state_reg[1] (sample_counter_n_2),
        .Rx(Rx),
        .Rx_0(sample_counter_n_1),
        .clk_16(clk_16),
        .\cnt_reg[2]_0 (sample_counter_n_4),
        .en_16(en_16),
        .en_bit(en_bit),
        .rst_16(rst_16),
        .rst_160(rst_160),
        .rst_16_reg(rst_16_i_3_n_0),
        .rst_16_reg_0(\FSM_onehot_state_reg_n_0_[0] ),
        .rst_16_reg_1(\FSM_onehot_state_reg_n_0_[2] ),
        .rst_bit(rst_bit),
        .rst_bit_0(rst_bit_0),
        .rst_n(rst_n),
        .rst_n_0(sample_counter_n_3),
        .shift_enable_reg(shift_enable_reg_0));
  FDRE shift_enable_reg
       (.C(clk_16),
        .CE(1'b1),
        .D(sample_counter_n_3),
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
  wire rst_n;
  wire shift_enable;
  wire shifter_RX_n_0;
  wire [7:0]tmp;

  design_1_connect_UART_RX_0_0_reg Data_reg
       (.E(WE),
        .Q(tmp),
        .\Q_reg[7]_0 (shifter_RX_n_0),
        .clk_16(clk_16),
        .data_out(data_out));
  design_1_connect_UART_RX_0_0_FSM_RX FSM_UART_RX
       (.E(WE),
        .Rx(Rx),
        .clk_16(clk_16),
        .rst_16_reg_0(shifter_RX_n_0),
        .rst_n(rst_n),
        .shift_enable_reg_0(shift_enable));
  design_1_connect_UART_RX_0_0_freq_division div_clk
       (.clk(clk),
        .clk_16(clk_16));
  design_1_connect_UART_RX_0_0_shifter shifter_RX
       (.CLK(clk_16),
        .E(shift_enable),
        .Q(tmp),
        .Rx(Rx),
        .rst_n(rst_n),
        .rst_n_0(shifter_RX_n_0));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module design_1_connect_UART_RX_0_0_counter
   (rst_n_0,
    \FSM_onehot_state_reg[1] ,
    \FSM_onehot_state_reg[0] ,
    \FSM_onehot_state_reg[2] ,
    en_bit,
    clk_16,
    rst_n,
    \FSM_onehot_state_reg[2]_0 ,
    \FSM_onehot_state_reg[1]_0 ,
    E,
    rst_bit_0,
    Rx,
    Rx_reg,
    \FSM_onehot_state_reg[0]_0 ,
    rst_bit);
  output rst_n_0;
  output \FSM_onehot_state_reg[1] ;
  output \FSM_onehot_state_reg[0] ;
  output \FSM_onehot_state_reg[2] ;
  input en_bit;
  input clk_16;
  input rst_n;
  input \FSM_onehot_state_reg[2]_0 ;
  input \FSM_onehot_state_reg[1]_0 ;
  input [0:0]E;
  input rst_bit_0;
  input Rx;
  input Rx_reg;
  input \FSM_onehot_state_reg[0]_0 ;
  input rst_bit;

  wire [0:0]E;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire Rx;
  wire Rx_reg;
  wire clk_16;
  wire \cnt[3]_i_2__0_n_0 ;
  wire [3:0]cnt_bit;
  wire en_bit;
  wire [3:0]plusOp__0;
  wire rst_bit;
  wire rst_bit_0;
  wire rst_n;
  wire rst_n_0;
  wire state__2;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_0 ),
        .I1(Rx),
        .I2(rst_bit_0),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\FSM_onehot_state_reg[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(rst_bit_0),
        .O(\FSM_onehot_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(rst_bit_0),
        .I1(Rx),
        .I2(\FSM_onehot_state[2]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg[2]_0 ),
        .O(\FSM_onehot_state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF080808)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(Rx_reg),
        .I2(Rx),
        .I3(state__2),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .I5(\FSM_onehot_state_reg[0]_0 ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB3BF8080)) 
    WE_i_1
       (.I0(state__2),
        .I1(rst_n),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(E),
        .O(rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    WE_i_2
       (.I0(cnt_bit[0]),
        .I1(cnt_bit[2]),
        .I2(cnt_bit[3]),
        .I3(cnt_bit[1]),
        .O(state__2));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__0 
       (.I0(cnt_bit[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1__0 
       (.I0(cnt_bit[0]),
        .I1(cnt_bit[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt_bit[0]),
        .I1(cnt_bit[1]),
        .I2(cnt_bit[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1__0 
       (.I0(cnt_bit[1]),
        .I1(cnt_bit[0]),
        .I2(cnt_bit[2]),
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
   (\FSM_onehot_state_reg[0] ,
    Rx_0,
    \FSM_onehot_state_reg[1] ,
    rst_n_0,
    \cnt_reg[2]_0 ,
    en_16,
    clk_16,
    rst_160,
    rst_16_reg,
    rst_16_reg_0,
    rst_16_reg_1,
    rst_16,
    Rx,
    rst_bit_0,
    rst_n,
    en_bit,
    rst_bit,
    shift_enable_reg);
  output \FSM_onehot_state_reg[0] ;
  output Rx_0;
  output \FSM_onehot_state_reg[1] ;
  output rst_n_0;
  output \cnt_reg[2]_0 ;
  input en_16;
  input clk_16;
  input rst_160;
  input rst_16_reg;
  input rst_16_reg_0;
  input rst_16_reg_1;
  input rst_16;
  input Rx;
  input rst_bit_0;
  input rst_n;
  input en_bit;
  input rst_bit;
  input [0:0]shift_enable_reg;

  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[1] ;
  wire Rx;
  wire Rx_0;
  wire clk_16;
  wire \cnt[2]_i_1__0_n_0 ;
  wire \cnt[3]_i_2_n_0 ;
  wire [3:0]cnt_16;
  wire \cnt_reg[2]_0 ;
  wire en_16;
  wire en_bit;
  wire en_bit_i_2_n_0;
  wire en_bit_i_3_n_0;
  wire [3:0]plusOp;
  wire rst_16;
  wire rst_160;
  wire rst_16_i_4_n_0;
  wire rst_16_reg;
  wire rst_16_reg_0;
  wire rst_16_reg_1;
  wire rst_bit;
  wire rst_bit_0;
  wire rst_n;
  wire rst_n_0;
  wire [0:0]shift_enable_reg;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(cnt_16[2]),
        .I1(cnt_16[0]),
        .I2(cnt_16[1]),
        .I3(cnt_16[3]),
        .I4(rst_bit_0),
        .O(\cnt_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_16[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_16[0]),
        .I1(cnt_16[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1__0 
       (.I0(cnt_16[0]),
        .I1(cnt_16[1]),
        .I2(cnt_16[2]),
        .O(\cnt[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
        .D(\cnt[2]_i_1__0_n_0 ),
        .Q(cnt_16[2]));
  FDCE \cnt_reg[3] 
       (.C(clk_16),
        .CE(en_16),
        .CLR(\cnt[3]_i_2_n_0 ),
        .D(plusOp[3]),
        .Q(cnt_16[3]));
  LUT6 #(
    .INIT(64'hF8FFFFFFF8000000)) 
    en_bit_i_1
       (.I0(Rx),
        .I1(rst_bit_0),
        .I2(en_bit_i_2_n_0),
        .I3(rst_n),
        .I4(en_bit_i_3_n_0),
        .I5(en_bit),
        .O(Rx_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    en_bit_i_2
       (.I0(rst_16_reg_1),
        .I1(cnt_16[1]),
        .I2(cnt_16[0]),
        .I3(cnt_16[2]),
        .I4(cnt_16[3]),
        .O(en_bit_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    en_bit_i_3
       (.I0(rst_16_reg_0),
        .I1(rst_16_i_4_n_0),
        .I2(rst_16_reg_1),
        .O(en_bit_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFECEFFFFFECE0)) 
    rst_16_i_1
       (.I0(rst_160),
        .I1(rst_16_reg),
        .I2(rst_16_reg_0),
        .I3(rst_16_i_4_n_0),
        .I4(rst_16_reg_1),
        .I5(rst_16),
        .O(\FSM_onehot_state_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    rst_16_i_4
       (.I0(rst_bit_0),
        .I1(Rx),
        .I2(cnt_16[1]),
        .I3(cnt_16[0]),
        .I4(cnt_16[2]),
        .I5(cnt_16[3]),
        .O(rst_16_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    rst_bit_i_1
       (.I0(rst_bit_0),
        .I1(rst_16_reg_0),
        .I2(rst_16_i_4_n_0),
        .I3(rst_bit),
        .O(\FSM_onehot_state_reg[1] ));
  LUT5 #(
    .INIT(32'hBBBF8880)) 
    shift_enable_i_1
       (.I0(en_bit_i_2_n_0),
        .I1(rst_n),
        .I2(rst_16_reg_1),
        .I3(rst_16_reg_0),
        .I4(shift_enable_reg),
        .O(rst_n_0));
endmodule

(* ORIG_REF_NAME = "freq_division" *) 
module design_1_connect_UART_RX_0_0_freq_division
   (clk_16,
    clk);
  output clk_16;
  input clk;

  wire clk;
  wire clk_16;
  wire [8:0]cnt_cur;
  wire \cnt_cur[0]_i_2_n_0 ;
  wire \cnt_cur[5]_i_2_n_0 ;
  wire \cnt_cur[8]_i_2_n_0 ;
  wire \cnt_cur[8]_i_3_n_0 ;
  wire \cnt_cur[8]_i_4_n_0 ;
  wire [8:0]cnt_cur_0;
  wire tmp_i_1_n_0;

  LUT5 #(
    .INIT(32'h1000FFFF)) 
    \cnt_cur[0]_i_1 
       (.I0(cnt_cur[4]),
        .I1(cnt_cur[3]),
        .I2(cnt_cur[2]),
        .I3(\cnt_cur[0]_i_2_n_0 ),
        .I4(cnt_cur[0]),
        .O(cnt_cur_0[0]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \cnt_cur[0]_i_2 
       (.I0(cnt_cur[6]),
        .I1(cnt_cur[5]),
        .I2(cnt_cur[8]),
        .I3(cnt_cur[7]),
        .I4(cnt_cur[1]),
        .I5(cnt_cur[0]),
        .O(\cnt_cur[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt_cur[1]_i_1 
       (.I0(\cnt_cur[8]_i_3_n_0 ),
        .I1(cnt_cur[0]),
        .I2(cnt_cur[1]),
        .O(cnt_cur_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt_cur[2]_i_1 
       (.I0(\cnt_cur[8]_i_3_n_0 ),
        .I1(cnt_cur[0]),
        .I2(cnt_cur[1]),
        .I3(cnt_cur[2]),
        .O(cnt_cur_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt_cur[3]_i_1 
       (.I0(\cnt_cur[8]_i_3_n_0 ),
        .I1(cnt_cur[1]),
        .I2(cnt_cur[0]),
        .I3(cnt_cur[2]),
        .I4(cnt_cur[3]),
        .O(cnt_cur_0[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt_cur[4]_i_1 
       (.I0(\cnt_cur[8]_i_3_n_0 ),
        .I1(cnt_cur[3]),
        .I2(cnt_cur[2]),
        .I3(cnt_cur[0]),
        .I4(cnt_cur[1]),
        .I5(cnt_cur[4]),
        .O(cnt_cur_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \cnt_cur[5]_i_1 
       (.I0(\cnt_cur[5]_i_2_n_0 ),
        .I1(\cnt_cur[8]_i_3_n_0 ),
        .I2(cnt_cur[5]),
        .O(cnt_cur_0[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt_cur[5]_i_2 
       (.I0(cnt_cur[4]),
        .I1(cnt_cur[3]),
        .I2(cnt_cur[2]),
        .I3(cnt_cur[0]),
        .I4(cnt_cur[1]),
        .O(\cnt_cur[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h84)) 
    \cnt_cur[6]_i_1 
       (.I0(\cnt_cur[8]_i_2_n_0 ),
        .I1(\cnt_cur[8]_i_3_n_0 ),
        .I2(cnt_cur[6]),
        .O(cnt_cur_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hD020)) 
    \cnt_cur[7]_i_1 
       (.I0(cnt_cur[6]),
        .I1(\cnt_cur[8]_i_2_n_0 ),
        .I2(\cnt_cur[8]_i_3_n_0 ),
        .I3(cnt_cur[7]),
        .O(cnt_cur_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hBF004000)) 
    \cnt_cur[8]_i_1 
       (.I0(\cnt_cur[8]_i_2_n_0 ),
        .I1(cnt_cur[6]),
        .I2(cnt_cur[7]),
        .I3(\cnt_cur[8]_i_3_n_0 ),
        .I4(cnt_cur[8]),
        .O(cnt_cur_0[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt_cur[8]_i_2 
       (.I0(cnt_cur[1]),
        .I1(cnt_cur[0]),
        .I2(cnt_cur[2]),
        .I3(cnt_cur[3]),
        .I4(cnt_cur[4]),
        .I5(cnt_cur[5]),
        .O(\cnt_cur[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \cnt_cur[8]_i_3 
       (.I0(\cnt_cur[8]_i_4_n_0 ),
        .I1(cnt_cur[3]),
        .I2(cnt_cur[4]),
        .I3(cnt_cur[8]),
        .I4(cnt_cur[6]),
        .O(\cnt_cur[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \cnt_cur[8]_i_4 
       (.I0(cnt_cur[2]),
        .I1(cnt_cur[5]),
        .I2(cnt_cur[0]),
        .I3(cnt_cur[1]),
        .I4(cnt_cur[7]),
        .O(\cnt_cur[8]_i_4_n_0 ));
  FDRE \cnt_cur_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_cur_0[0]),
        .Q(cnt_cur[0]),
        .R(1'b0));
  FDRE \cnt_cur_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_cur_0[1]),
        .Q(cnt_cur[1]),
        .R(1'b0));
  FDRE \cnt_cur_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_cur_0[2]),
        .Q(cnt_cur[2]),
        .R(1'b0));
  FDRE \cnt_cur_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_cur_0[3]),
        .Q(cnt_cur[3]),
        .R(1'b0));
  FDRE \cnt_cur_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_cur_0[4]),
        .Q(cnt_cur[4]),
        .R(1'b0));
  FDRE \cnt_cur_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_cur_0[5]),
        .Q(cnt_cur[5]),
        .R(1'b0));
  FDRE \cnt_cur_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_cur_0[6]),
        .Q(cnt_cur[6]),
        .R(1'b0));
  FDRE \cnt_cur_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_cur_0[7]),
        .Q(cnt_cur[7]),
        .R(1'b0));
  FDRE \cnt_cur_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_cur_0[8]),
        .Q(cnt_cur[8]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFF1000)) 
    tmp_i_1
       (.I0(cnt_cur[4]),
        .I1(cnt_cur[3]),
        .I2(cnt_cur[2]),
        .I3(\cnt_cur[0]_i_2_n_0 ),
        .I4(clk_16),
        .O(tmp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tmp_reg
       (.C(clk),
        .CE(1'b1),
        .D(tmp_i_1_n_0),
        .Q(clk_16),
        .R(1'b0));
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
   (rst_n_0,
    Q,
    rst_n,
    E,
    Rx,
    CLK);
  output rst_n_0;
  output [7:0]Q;
  input rst_n;
  input [0:0]E;
  input Rx;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire [7:0]Q;
  wire Rx;
  wire rst_n;
  wire rst_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \Q[7]_i_1 
       (.I0(rst_n),
        .O(rst_n_0));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .PRE(rst_n_0),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .PRE(rst_n_0),
        .Q(Q[1]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .PRE(rst_n_0),
        .Q(Q[2]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .PRE(rst_n_0),
        .Q(Q[3]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .PRE(rst_n_0),
        .Q(Q[4]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .PRE(rst_n_0),
        .Q(Q[5]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .PRE(rst_n_0),
        .Q(Q[6]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Rx),
        .PRE(rst_n_0),
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
