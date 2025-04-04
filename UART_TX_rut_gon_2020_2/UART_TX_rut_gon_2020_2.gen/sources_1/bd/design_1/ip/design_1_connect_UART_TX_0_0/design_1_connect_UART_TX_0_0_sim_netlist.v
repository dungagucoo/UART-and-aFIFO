// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Dec  4 19:10:32 2023
// Host        : DESKTOP-GLV9KF3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/_Bai_tap/CSTT/UART_TX_rut_gon_2020_2/UART_TX_rut_gon_2020_2.gen/sources_1/bd/design_1/ip/design_1_connect_UART_TX_0_0/design_1_connect_UART_TX_0_0_sim_netlist.v
// Design      : design_1_connect_UART_TX_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_connect_UART_TX_0_0,connect_UART_TX,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "connect_UART_TX,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_connect_UART_TX_0_0
   (rst_n,
    tx_start,
    clk,
    data_in,
    data_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input tx_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
  input [7:0]data_in;
  output data_out;

  wire clk;
  wire [7:0]data_in;
  wire data_out;
  wire rst_n;
  wire tx_start;

  design_1_connect_UART_TX_0_0_connect_UART_TX inst
       (.clk(clk),
        .data_in(data_in),
        .data_out(data_out),
        .rst_n(rst_n),
        .tx_start(tx_start));
endmodule

(* ORIG_REF_NAME = "FSM_TX" *) 
module design_1_connect_UART_TX_0_0_FSM_TX
   (data_out,
    CLK,
    tx_start,
    rst_n,
    data_in);
  output data_out;
  input CLK;
  input tx_start;
  input rst_n;
  input [7:0]data_in;

  wire CLK;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire bit_counter_n_0;
  wire bit_counter_n_1;
  wire [7:0]data_in;
  wire data_out;
  wire data_out_i_2_n_0;
  wire data_out_i_4_n_0;
  wire data_shift0;
  wire \data_shift[0]_i_1_n_0 ;
  wire \data_shift[1]_i_1_n_0 ;
  wire \data_shift[2]_i_1_n_0 ;
  wire \data_shift[3]_i_1_n_0 ;
  wire \data_shift[4]_i_1_n_0 ;
  wire \data_shift[5]_i_1_n_0 ;
  wire \data_shift[6]_i_1_n_0 ;
  wire \data_shift[7]_i_2_n_0 ;
  wire \data_shift_reg_n_0_[0] ;
  wire en_16;
  wire en_16_0;
  wire en_16_i_1_n_0;
  wire en_bit;
  wire [6:1]in9;
  wire p_0_in;
  wire rst_bit;
  wire rst_n;
  wire sample_counter_n_0;
  wire sample_counter_n_1;
  wire sample_counter_n_2;
  wire sample_counter_n_3;
  wire sample_counter_n_4;
  wire sample_counter_n_6;
  wire tx_start;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(rst_n),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,start:010,shift_data:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(sample_counter_n_4),
        .PRE(\FSM_onehot_state[2]_i_2_n_0 ),
        .Q(en_16_0));
  (* FSM_ENCODED_STATES = "idle:001,start:010,shift_data:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_state[2]_i_2_n_0 ),
        .D(sample_counter_n_3),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "idle:001,start:010,shift_data:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_state[2]_i_2_n_0 ),
        .D(sample_counter_n_2),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  design_1_connect_UART_TX_0_0_counter bit_counter
       (.CLK(CLK),
        .E(en_bit),
        .\FSM_onehot_state_reg[0] (bit_counter_n_0),
        .\cnt_reg[0]_0 (bit_counter_n_1),
        .\cnt_reg[3]_0 (sample_counter_n_6),
        .en_16_0(en_16_0),
        .rst_16_reg(\FSM_onehot_state_reg_n_0_[2] ),
        .rst_bit(rst_bit),
        .tx_start(tx_start));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    data_out_i_2
       (.I0(p_0_in),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\data_shift_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(tx_start),
        .I5(en_16_0),
        .O(data_out_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    data_out_i_4
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(data_out_i_4_n_0));
  FDRE data_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sample_counter_n_1),
        .Q(data_out),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_shift[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_0_in),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(en_16_0),
        .I4(data_in[0]),
        .O(\data_shift[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_shift[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[1]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(en_16_0),
        .I4(data_in[1]),
        .O(\data_shift[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_shift[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[2]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(en_16_0),
        .I4(data_in[2]),
        .O(\data_shift[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_shift[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[3]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(en_16_0),
        .I4(data_in[3]),
        .O(\data_shift[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_shift[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[4]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(en_16_0),
        .I4(data_in[4]),
        .O(\data_shift[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_shift[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[5]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(en_16_0),
        .I4(data_in[5]),
        .O(\data_shift[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_shift[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(in9[6]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(en_16_0),
        .I4(data_in[6]),
        .O(\data_shift[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \data_shift[7]_i_2 
       (.I0(en_16_0),
        .I1(data_in[7]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\data_shift[7]_i_2_n_0 ));
  FDRE \data_shift_reg[0] 
       (.C(CLK),
        .CE(data_shift0),
        .D(\data_shift[0]_i_1_n_0 ),
        .Q(\data_shift_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_shift_reg[1] 
       (.C(CLK),
        .CE(data_shift0),
        .D(\data_shift[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \data_shift_reg[2] 
       (.C(CLK),
        .CE(data_shift0),
        .D(\data_shift[2]_i_1_n_0 ),
        .Q(in9[1]),
        .R(1'b0));
  FDRE \data_shift_reg[3] 
       (.C(CLK),
        .CE(data_shift0),
        .D(\data_shift[3]_i_1_n_0 ),
        .Q(in9[2]),
        .R(1'b0));
  FDRE \data_shift_reg[4] 
       (.C(CLK),
        .CE(data_shift0),
        .D(\data_shift[4]_i_1_n_0 ),
        .Q(in9[3]),
        .R(1'b0));
  FDRE \data_shift_reg[5] 
       (.C(CLK),
        .CE(data_shift0),
        .D(\data_shift[5]_i_1_n_0 ),
        .Q(in9[4]),
        .R(1'b0));
  FDRE \data_shift_reg[6] 
       (.C(CLK),
        .CE(data_shift0),
        .D(\data_shift[6]_i_1_n_0 ),
        .Q(in9[5]),
        .R(1'b0));
  FDRE \data_shift_reg[7] 
       (.C(CLK),
        .CE(data_shift0),
        .D(\data_shift[7]_i_2_n_0 ),
        .Q(in9[6]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    en_16_i_1
       (.I0(tx_start),
        .I1(en_16_0),
        .I2(rst_n),
        .I3(en_16),
        .O(en_16_i_1_n_0));
  FDRE en_16_reg
       (.C(CLK),
        .CE(1'b1),
        .D(en_16_i_1_n_0),
        .Q(en_16),
        .R(1'b0));
  FDRE en_bit_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sample_counter_n_0),
        .Q(en_bit),
        .R(1'b0));
  FDCE rst_16_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_state[2]_i_2_n_0 ),
        .D(bit_counter_n_0),
        .Q(rst_bit));
  design_1_connect_UART_TX_0_0_counter_0 sample_counter
       (.CLK(CLK),
        .E(en_bit),
        .\FSM_onehot_state_reg[1] (sample_counter_n_2),
        .\FSM_onehot_state_reg[1]_0 (sample_counter_n_3),
        .\FSM_onehot_state_reg[2] (sample_counter_n_0),
        .\FSM_onehot_state_reg[2]_0 (sample_counter_n_4),
        .\FSM_onehot_state_reg[2]_1 (\FSM_onehot_state_reg_n_0_[2] ),
        .\FSM_onehot_state_reg[2]_2 (\FSM_onehot_state_reg_n_0_[1] ),
        .\FSM_onehot_state_reg[2]_3 (bit_counter_n_1),
        .\cnt_reg[3]_0 (en_16),
        .data_out(data_out),
        .data_out_reg(data_out_i_2_n_0),
        .data_out_reg_0(data_out_i_4_n_0),
        .en_16_0(en_16_0),
        .rst_16_reg(sample_counter_n_6),
        .rst_bit(rst_bit),
        .rst_n(rst_n),
        .rst_n_0(sample_counter_n_1),
        .tx_start(tx_start),
        .tx_start_0(data_shift0));
endmodule

(* ORIG_REF_NAME = "connect_UART_TX" *) 
module design_1_connect_UART_TX_0_0_connect_UART_TX
   (data_out,
    tx_start,
    clk,
    rst_n,
    data_in);
  output data_out;
  input tx_start;
  input clk;
  input rst_n;
  input [7:0]data_in;

  wire clk;
  wire clk_16;
  wire [7:0]data_in;
  wire data_out;
  wire rst_n;
  wire tx_start;

  design_1_connect_UART_TX_0_0_FSM_TX FSM_UART_TX
       (.CLK(clk_16),
        .data_in(data_in),
        .data_out(data_out),
        .rst_n(rst_n),
        .tx_start(tx_start));
  design_1_connect_UART_TX_0_0_freq_division div_clk
       (.CLK(clk_16),
        .clk(clk));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module design_1_connect_UART_TX_0_0_counter
   (\FSM_onehot_state_reg[0] ,
    \cnt_reg[0]_0 ,
    en_16_0,
    tx_start,
    rst_bit,
    rst_16_reg,
    E,
    CLK,
    \cnt_reg[3]_0 );
  output \FSM_onehot_state_reg[0] ;
  output \cnt_reg[0]_0 ;
  input en_16_0;
  input tx_start;
  input rst_bit;
  input rst_16_reg;
  input [0:0]E;
  input CLK;
  input \cnt_reg[3]_0 ;

  wire CLK;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[0] ;
  wire [3:0]cnt_bit;
  wire \cnt_reg[0]_0 ;
  wire \cnt_reg[3]_0 ;
  wire en_16_0;
  wire [3:0]plusOp__0;
  wire rst_16_reg;
  wire rst_bit;
  wire tx_start;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(cnt_bit[0]),
        .I1(cnt_bit[1]),
        .I2(cnt_bit[2]),
        .I3(rst_16_reg),
        .I4(cnt_bit[3]),
        .O(\cnt_reg[0]_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  FDCE \cnt_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\cnt_reg[3]_0 ),
        .D(plusOp__0[0]),
        .Q(cnt_bit[0]));
  FDCE \cnt_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\cnt_reg[3]_0 ),
        .D(plusOp__0[1]),
        .Q(cnt_bit[1]));
  FDCE \cnt_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\cnt_reg[3]_0 ),
        .D(plusOp__0[2]),
        .Q(cnt_bit[2]));
  FDCE \cnt_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\cnt_reg[3]_0 ),
        .D(plusOp__0[3]),
        .Q(cnt_bit[3]));
  LUT4 #(
    .INIT(16'hD5C0)) 
    rst_16_i_1
       (.I0(\cnt_reg[0]_0 ),
        .I1(en_16_0),
        .I2(tx_start),
        .I3(rst_bit),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module design_1_connect_UART_TX_0_0_counter_0
   (\FSM_onehot_state_reg[2] ,
    rst_n_0,
    \FSM_onehot_state_reg[1] ,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[2]_0 ,
    tx_start_0,
    rst_16_reg,
    \FSM_onehot_state_reg[2]_1 ,
    rst_n,
    en_16_0,
    E,
    data_out_reg,
    data_out_reg_0,
    data_out,
    \FSM_onehot_state_reg[2]_2 ,
    tx_start,
    \FSM_onehot_state_reg[2]_3 ,
    rst_bit,
    \cnt_reg[3]_0 ,
    CLK);
  output \FSM_onehot_state_reg[2] ;
  output rst_n_0;
  output \FSM_onehot_state_reg[1] ;
  output \FSM_onehot_state_reg[1]_0 ;
  output \FSM_onehot_state_reg[2]_0 ;
  output [0:0]tx_start_0;
  output rst_16_reg;
  input \FSM_onehot_state_reg[2]_1 ;
  input rst_n;
  input en_16_0;
  input [0:0]E;
  input data_out_reg;
  input data_out_reg_0;
  input data_out;
  input \FSM_onehot_state_reg[2]_2 ;
  input tx_start;
  input \FSM_onehot_state_reg[2]_3 ;
  input rst_bit;
  input [0:0]\cnt_reg[3]_0 ;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[2]_1 ;
  wire \FSM_onehot_state_reg[2]_2 ;
  wire \FSM_onehot_state_reg[2]_3 ;
  wire [0:0]\cnt_reg[3]_0 ;
  wire [3:0]count_out;
  wire data_out;
  wire data_out_i_3_n_0;
  wire data_out_reg;
  wire data_out_reg_0;
  wire en_16_0;
  wire [3:0]plusOp;
  wire rst_16_reg;
  wire rst_bit;
  wire rst_n;
  wire rst_n_0;
  wire tx_start;
  wire [0:0]tx_start_0;

  LUT6 #(
    .INIT(64'hAAAAAAAAAABF8080)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_1 ),
        .I1(\FSM_onehot_state_reg[2]_2 ),
        .I2(data_out_i_3_n_0),
        .I3(tx_start),
        .I4(en_16_0),
        .I5(\FSM_onehot_state_reg[2]_3 ),
        .O(\FSM_onehot_state_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hFF00FA22)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_2 ),
        .I1(data_out_i_3_n_0),
        .I2(tx_start),
        .I3(en_16_0),
        .I4(\FSM_onehot_state_reg[2]_3 ),
        .O(\FSM_onehot_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAFFFAAAAA888)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_2 ),
        .I1(data_out_i_3_n_0),
        .I2(tx_start),
        .I3(en_16_0),
        .I4(\FSM_onehot_state_reg[2]_3 ),
        .I5(\FSM_onehot_state_reg[2]_1 ),
        .O(\FSM_onehot_state_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(count_out[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(count_out[0]),
        .I1(count_out[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(count_out[1]),
        .I1(count_out[0]),
        .I2(count_out[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1 
       (.I0(count_out[2]),
        .I1(count_out[0]),
        .I2(count_out[1]),
        .I3(count_out[3]),
        .O(plusOp[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[3]_i_2 
       (.I0(rst_bit),
        .O(rst_16_reg));
  FDCE \cnt_reg[0] 
       (.C(CLK),
        .CE(\cnt_reg[3]_0 ),
        .CLR(rst_16_reg),
        .D(plusOp[0]),
        .Q(count_out[0]));
  FDCE \cnt_reg[1] 
       (.C(CLK),
        .CE(\cnt_reg[3]_0 ),
        .CLR(rst_16_reg),
        .D(plusOp[1]),
        .Q(count_out[1]));
  FDCE \cnt_reg[2] 
       (.C(CLK),
        .CE(\cnt_reg[3]_0 ),
        .CLR(rst_16_reg),
        .D(plusOp[2]),
        .Q(count_out[2]));
  FDCE \cnt_reg[3] 
       (.C(CLK),
        .CE(\cnt_reg[3]_0 ),
        .CLR(rst_16_reg),
        .D(plusOp[3]),
        .Q(count_out[3]));
  LUT6 #(
    .INIT(64'hAAFFBFFFAA008000)) 
    data_out_i_1
       (.I0(data_out_reg),
        .I1(data_out_i_3_n_0),
        .I2(data_out_reg_0),
        .I3(rst_n),
        .I4(en_16_0),
        .I5(data_out),
        .O(rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    data_out_i_3
       (.I0(count_out[3]),
        .I1(count_out[2]),
        .I2(count_out[0]),
        .I3(count_out[1]),
        .O(data_out_i_3_n_0));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \data_shift[7]_i_1 
       (.I0(tx_start),
        .I1(en_16_0),
        .I2(data_out_i_3_n_0),
        .I3(\FSM_onehot_state_reg[2]_1 ),
        .I4(rst_n),
        .O(tx_start_0));
  LUT5 #(
    .INIT(32'h8FBF8080)) 
    en_bit_i_1
       (.I0(data_out_i_3_n_0),
        .I1(\FSM_onehot_state_reg[2]_1 ),
        .I2(rst_n),
        .I3(en_16_0),
        .I4(E),
        .O(\FSM_onehot_state_reg[2] ));
endmodule

(* ORIG_REF_NAME = "freq_division" *) 
module design_1_connect_UART_TX_0_0_freq_division
   (CLK,
    clk);
  output CLK;
  input clk;

  wire CLK;
  wire clk;
  wire [8:0]cnt_cur;
  wire \cnt_cur[0]_i_2_n_0 ;
  wire \cnt_cur[3]_i_2_n_0 ;
  wire \cnt_cur[4]_i_2_n_0 ;
  wire \cnt_cur[5]_i_2_n_0 ;
  wire \cnt_cur[5]_i_3_n_0 ;
  wire \cnt_cur[5]_i_4_n_0 ;
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
  LUT6 #(
    .INIT(64'h3C3C3C3C3C383C3C)) 
    \cnt_cur[1]_i_1 
       (.I0(cnt_cur[7]),
        .I1(cnt_cur[1]),
        .I2(cnt_cur[0]),
        .I3(cnt_cur[5]),
        .I4(cnt_cur[2]),
        .I5(\cnt_cur[5]_i_3_n_0 ),
        .O(cnt_cur_0[1]));
  LUT6 #(
    .INIT(64'h3F3FC0C03F3BC0C0)) 
    \cnt_cur[2]_i_1 
       (.I0(cnt_cur[7]),
        .I1(cnt_cur[1]),
        .I2(cnt_cur[0]),
        .I3(cnt_cur[5]),
        .I4(cnt_cur[2]),
        .I5(\cnt_cur[5]_i_3_n_0 ),
        .O(cnt_cur_0[2]));
  LUT6 #(
    .INIT(64'h32333333CCCCCCCC)) 
    \cnt_cur[3]_i_1 
       (.I0(\cnt_cur[8]_i_4_n_0 ),
        .I1(cnt_cur[3]),
        .I2(cnt_cur[4]),
        .I3(cnt_cur[8]),
        .I4(cnt_cur[6]),
        .I5(\cnt_cur[3]_i_2_n_0 ),
        .O(cnt_cur_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cnt_cur[3]_i_2 
       (.I0(cnt_cur[2]),
        .I1(cnt_cur[0]),
        .I2(cnt_cur[1]),
        .O(\cnt_cur[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F00E0F0F0F)) 
    \cnt_cur[4]_i_1 
       (.I0(\cnt_cur[8]_i_4_n_0 ),
        .I1(cnt_cur[3]),
        .I2(cnt_cur[4]),
        .I3(cnt_cur[8]),
        .I4(cnt_cur[6]),
        .I5(\cnt_cur[4]_i_2_n_0 ),
        .O(cnt_cur_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt_cur[4]_i_2 
       (.I0(cnt_cur[1]),
        .I1(cnt_cur[0]),
        .I2(cnt_cur[2]),
        .I3(cnt_cur[3]),
        .O(\cnt_cur[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55555555AAAAAA8A)) 
    \cnt_cur[5]_i_1 
       (.I0(\cnt_cur[5]_i_2_n_0 ),
        .I1(\cnt_cur[5]_i_3_n_0 ),
        .I2(cnt_cur[2]),
        .I3(\cnt_cur[5]_i_4_n_0 ),
        .I4(cnt_cur[7]),
        .I5(cnt_cur[5]),
        .O(cnt_cur_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt_cur[5]_i_2 
       (.I0(cnt_cur[4]),
        .I1(cnt_cur[3]),
        .I2(cnt_cur[2]),
        .I3(cnt_cur[0]),
        .I4(cnt_cur[1]),
        .O(\cnt_cur[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \cnt_cur[5]_i_3 
       (.I0(cnt_cur[6]),
        .I1(cnt_cur[8]),
        .I2(cnt_cur[4]),
        .I3(cnt_cur[3]),
        .O(\cnt_cur[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \cnt_cur[5]_i_4 
       (.I0(cnt_cur[0]),
        .I1(cnt_cur[1]),
        .O(\cnt_cur[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA255555555)) 
    \cnt_cur[6]_i_1 
       (.I0(\cnt_cur[8]_i_2_n_0 ),
        .I1(cnt_cur[8]),
        .I2(cnt_cur[4]),
        .I3(cnt_cur[3]),
        .I4(\cnt_cur[8]_i_4_n_0 ),
        .I5(cnt_cur[6]),
        .O(cnt_cur_0[6]));
  LUT6 #(
    .INIT(64'hDDDD5DDD22220222)) 
    \cnt_cur[7]_i_1 
       (.I0(cnt_cur[6]),
        .I1(\cnt_cur[8]_i_2_n_0 ),
        .I2(cnt_cur[8]),
        .I3(\cnt_cur[8]_i_3_n_0 ),
        .I4(\cnt_cur[8]_i_4_n_0 ),
        .I5(cnt_cur[7]),
        .O(cnt_cur_0[7]));
  LUT6 #(
    .INIT(64'hBFBF33BF40404040)) 
    \cnt_cur[8]_i_1 
       (.I0(\cnt_cur[8]_i_2_n_0 ),
        .I1(cnt_cur[6]),
        .I2(cnt_cur[7]),
        .I3(\cnt_cur[8]_i_3_n_0 ),
        .I4(\cnt_cur[8]_i_4_n_0 ),
        .I5(cnt_cur[8]),
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_cur[8]_i_3 
       (.I0(cnt_cur[3]),
        .I1(cnt_cur[4]),
        .O(\cnt_cur[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hEFFF1000)) 
    tmp_i_1
       (.I0(cnt_cur[4]),
        .I1(cnt_cur[3]),
        .I2(cnt_cur[2]),
        .I3(\cnt_cur[0]_i_2_n_0 ),
        .I4(CLK),
        .O(tmp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tmp_reg
       (.C(clk),
        .CE(1'b1),
        .D(tmp_i_1_n_0),
        .Q(CLK),
        .R(1'b0));
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
