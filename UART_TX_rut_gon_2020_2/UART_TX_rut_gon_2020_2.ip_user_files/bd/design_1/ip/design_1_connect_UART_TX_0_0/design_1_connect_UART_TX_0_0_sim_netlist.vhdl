-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat Dec  2 15:46:28 2023
-- Host        : DESKTOP-GLV9KF3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Vivado/_Bai_tap/CSTT/UART_TX_rut_gon_2020_2/UART_TX_rut_gon_2020_2.gen/sources_1/bd/design_1/ip/design_1_connect_UART_TX_0_0/design_1_connect_UART_TX_0_0_sim_netlist.vhdl
-- Design      : design_1_connect_UART_TX_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_connect_UART_TX_0_0_counter is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    en_bit : in STD_LOGIC;
    clk_16 : in STD_LOGIC;
    rst_bit : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_start : in STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_connect_UART_TX_0_0_counter : entity is "counter";
end design_1_connect_UART_TX_0_0_counter;

architecture STRUCTURE of design_1_connect_UART_TX_0_0_counter is
  signal \FSM_onehot_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2__0_n_0\ : STD_LOGIC;
  signal cnt_bit : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[1]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[3]_i_1__0\ : label is "soft_lutpair0";
begin
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => Q(0),
      I1 => tx_start,
      I2 => \FSM_onehot_state[2]_i_3_n_0\,
      I3 => \FSM_onehot_state_reg[0]\,
      I4 => Q(1),
      O => E(0)
    );
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => cnt_bit(1),
      I1 => cnt_bit(3),
      I2 => cnt_bit(2),
      I3 => cnt_bit(0),
      I4 => Q(2),
      O => \FSM_onehot_state[2]_i_3_n_0\
    );
\cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_bit(0),
      O => \plusOp__0\(0)
    );
\cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_bit(0),
      I1 => cnt_bit(1),
      O => \plusOp__0\(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt_bit(0),
      I1 => cnt_bit(1),
      I2 => cnt_bit(2),
      O => \plusOp__0\(2)
    );
\cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt_bit(1),
      I1 => cnt_bit(0),
      I2 => cnt_bit(2),
      I3 => cnt_bit(3),
      O => \plusOp__0\(3)
    );
\cnt[3]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_bit,
      O => \cnt[3]_i_2__0_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => en_bit,
      CLR => \cnt[3]_i_2__0_n_0\,
      D => \plusOp__0\(0),
      Q => cnt_bit(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => en_bit,
      CLR => \cnt[3]_i_2__0_n_0\,
      D => \plusOp__0\(1),
      Q => cnt_bit(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => en_bit,
      CLR => \cnt[3]_i_2__0_n_0\,
      D => \plusOp__0\(2),
      Q => cnt_bit(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => en_bit,
      CLR => \cnt[3]_i_2__0_n_0\,
      D => \plusOp__0\(3),
      Q => cnt_bit(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_connect_UART_TX_0_0_counter_0 is
  port (
    rst_n_0 : out STD_LOGIC;
    \cnt_reg[3]_0\ : out STD_LOGIC;
    rst_n_1 : out STD_LOGIC;
    data_shift0 : out STD_LOGIC;
    en_16 : in STD_LOGIC;
    clk_16 : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    en_bit : in STD_LOGIC;
    data_out_reg : in STD_LOGIC;
    data_out : in STD_LOGIC;
    tx_start : in STD_LOGIC;
    rst_16 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_connect_UART_TX_0_0_counter_0 : entity is "counter";
end design_1_connect_UART_TX_0_0_counter_0;

architecture STRUCTURE of design_1_connect_UART_TX_0_0_counter_0 is
  signal \cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \^cnt_reg[3]_0\ : STD_LOGIC;
  signal count_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_out_i_3_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair2";
begin
  \cnt_reg[3]_0\ <= \^cnt_reg[3]_0\;
\FSM_onehot_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => count_out(3),
      I1 => count_out(2),
      I2 => count_out(0),
      I3 => count_out(1),
      O => \^cnt_reg[3]_0\
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_out(0),
      O => plusOp(0)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_out(0),
      I1 => count_out(1),
      O => plusOp(1)
    );
\cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_out(0),
      I1 => count_out(1),
      I2 => count_out(2),
      O => \cnt[2]_i_1__0_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_out(1),
      I1 => count_out(0),
      I2 => count_out(2),
      I3 => count_out(3),
      O => plusOp(3)
    );
\cnt[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_16,
      O => \cnt[3]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => en_16,
      CLR => \cnt[3]_i_2_n_0\,
      D => plusOp(0),
      Q => count_out(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => en_16,
      CLR => \cnt[3]_i_2_n_0\,
      D => plusOp(1),
      Q => count_out(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => en_16,
      CLR => \cnt[3]_i_2_n_0\,
      D => \cnt[2]_i_1__0_n_0\,
      Q => count_out(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => en_16,
      CLR => \cnt[3]_i_2_n_0\,
      D => plusOp(3),
      Q => count_out(3)
    );
data_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBF8880"
    )
        port map (
      I0 => data_out_reg,
      I1 => rst_n,
      I2 => data_out_i_3_n_0,
      I3 => Q(0),
      I4 => data_out,
      O => rst_n_1
    );
data_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000800080000000"
    )
        port map (
      I0 => count_out(1),
      I1 => count_out(0),
      I2 => count_out(2),
      I3 => count_out(3),
      I4 => Q(2),
      I5 => Q(1),
      O => data_out_i_3_n_0
    );
\data_shift[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => rst_n,
      I1 => Q(2),
      I2 => \^cnt_reg[3]_0\,
      I3 => Q(0),
      I4 => tx_start,
      O => data_shift0
    );
en_bit_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^cnt_reg[3]_0\,
      I1 => rst_n,
      I2 => Q(2),
      I3 => en_bit,
      O => rst_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_connect_UART_TX_0_0_freq_division is
  port (
    clk_16 : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_connect_UART_TX_0_0_freq_division : entity is "freq_division";
end design_1_connect_UART_TX_0_0_freq_division;

architecture STRUCTURE of design_1_connect_UART_TX_0_0_freq_division is
  signal \^clk_16\ : STD_LOGIC;
  signal cnt_cur : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \cnt_cur[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_cur[3]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_cur[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_cur[5]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_cur[5]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_cur[5]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_cur[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_cur[8]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_cur[8]_i_4_n_0\ : STD_LOGIC;
  signal cnt_cur_0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal tmp_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_cur[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_cur[4]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_cur[5]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_cur[8]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_cur[8]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of tmp_i_1 : label is "soft_lutpair6";
begin
  clk_16 <= \^clk_16\;
\cnt_cur[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1000FFFF"
    )
        port map (
      I0 => cnt_cur(4),
      I1 => cnt_cur(3),
      I2 => cnt_cur(2),
      I3 => \cnt_cur[0]_i_2_n_0\,
      I4 => cnt_cur(0),
      O => cnt_cur_0(0)
    );
\cnt_cur[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => cnt_cur(6),
      I1 => cnt_cur(5),
      I2 => cnt_cur(8),
      I3 => cnt_cur(7),
      I4 => cnt_cur(1),
      I5 => cnt_cur(0),
      O => \cnt_cur[0]_i_2_n_0\
    );
\cnt_cur[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3C3C3C3C383C3C"
    )
        port map (
      I0 => cnt_cur(7),
      I1 => cnt_cur(1),
      I2 => cnt_cur(0),
      I3 => cnt_cur(5),
      I4 => cnt_cur(2),
      I5 => \cnt_cur[5]_i_3_n_0\,
      O => cnt_cur_0(1)
    );
\cnt_cur[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F3FC0C03F3BC0C0"
    )
        port map (
      I0 => cnt_cur(7),
      I1 => cnt_cur(1),
      I2 => cnt_cur(0),
      I3 => cnt_cur(5),
      I4 => cnt_cur(2),
      I5 => \cnt_cur[5]_i_3_n_0\,
      O => cnt_cur_0(2)
    );
\cnt_cur[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"32333333CCCCCCCC"
    )
        port map (
      I0 => \cnt_cur[8]_i_4_n_0\,
      I1 => cnt_cur(3),
      I2 => cnt_cur(4),
      I3 => cnt_cur(8),
      I4 => cnt_cur(6),
      I5 => \cnt_cur[3]_i_2_n_0\,
      O => cnt_cur_0(3)
    );
\cnt_cur[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => cnt_cur(2),
      I1 => cnt_cur(0),
      I2 => cnt_cur(1),
      O => \cnt_cur[3]_i_2_n_0\
    );
\cnt_cur[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F00E0F0F0F"
    )
        port map (
      I0 => \cnt_cur[8]_i_4_n_0\,
      I1 => cnt_cur(3),
      I2 => cnt_cur(4),
      I3 => cnt_cur(8),
      I4 => cnt_cur(6),
      I5 => \cnt_cur[4]_i_2_n_0\,
      O => cnt_cur_0(4)
    );
\cnt_cur[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cnt_cur(1),
      I1 => cnt_cur(0),
      I2 => cnt_cur(2),
      I3 => cnt_cur(3),
      O => \cnt_cur[4]_i_2_n_0\
    );
\cnt_cur[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555AAAAAA8A"
    )
        port map (
      I0 => \cnt_cur[5]_i_2_n_0\,
      I1 => \cnt_cur[5]_i_3_n_0\,
      I2 => cnt_cur(2),
      I3 => \cnt_cur[5]_i_4_n_0\,
      I4 => cnt_cur(7),
      I5 => cnt_cur(5),
      O => cnt_cur_0(5)
    );
\cnt_cur[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => cnt_cur(4),
      I1 => cnt_cur(3),
      I2 => cnt_cur(2),
      I3 => cnt_cur(0),
      I4 => cnt_cur(1),
      O => \cnt_cur[5]_i_2_n_0\
    );
\cnt_cur[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => cnt_cur(6),
      I1 => cnt_cur(8),
      I2 => cnt_cur(4),
      I3 => cnt_cur(3),
      O => \cnt_cur[5]_i_3_n_0\
    );
\cnt_cur[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cnt_cur(0),
      I1 => cnt_cur(1),
      O => \cnt_cur[5]_i_4_n_0\
    );
\cnt_cur[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA255555555"
    )
        port map (
      I0 => \cnt_cur[8]_i_2_n_0\,
      I1 => cnt_cur(8),
      I2 => cnt_cur(4),
      I3 => cnt_cur(3),
      I4 => \cnt_cur[8]_i_4_n_0\,
      I5 => cnt_cur(6),
      O => cnt_cur_0(6)
    );
\cnt_cur[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDD5DDD22220222"
    )
        port map (
      I0 => cnt_cur(6),
      I1 => \cnt_cur[8]_i_2_n_0\,
      I2 => cnt_cur(8),
      I3 => \cnt_cur[8]_i_3_n_0\,
      I4 => \cnt_cur[8]_i_4_n_0\,
      I5 => cnt_cur(7),
      O => cnt_cur_0(7)
    );
\cnt_cur[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBF33BF40404040"
    )
        port map (
      I0 => \cnt_cur[8]_i_2_n_0\,
      I1 => cnt_cur(6),
      I2 => cnt_cur(7),
      I3 => \cnt_cur[8]_i_3_n_0\,
      I4 => \cnt_cur[8]_i_4_n_0\,
      I5 => cnt_cur(8),
      O => cnt_cur_0(8)
    );
\cnt_cur[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => cnt_cur(1),
      I1 => cnt_cur(0),
      I2 => cnt_cur(2),
      I3 => cnt_cur(3),
      I4 => cnt_cur(4),
      I5 => cnt_cur(5),
      O => \cnt_cur[8]_i_2_n_0\
    );
\cnt_cur[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_cur(3),
      I1 => cnt_cur(4),
      O => \cnt_cur[8]_i_3_n_0\
    );
\cnt_cur[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => cnt_cur(2),
      I1 => cnt_cur(5),
      I2 => cnt_cur(0),
      I3 => cnt_cur(1),
      I4 => cnt_cur(7),
      O => \cnt_cur[8]_i_4_n_0\
    );
\cnt_cur_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_cur_0(0),
      Q => cnt_cur(0),
      R => '0'
    );
\cnt_cur_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_cur_0(1),
      Q => cnt_cur(1),
      R => '0'
    );
\cnt_cur_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_cur_0(2),
      Q => cnt_cur(2),
      R => '0'
    );
\cnt_cur_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_cur_0(3),
      Q => cnt_cur(3),
      R => '0'
    );
\cnt_cur_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_cur_0(4),
      Q => cnt_cur(4),
      R => '0'
    );
\cnt_cur_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_cur_0(5),
      Q => cnt_cur(5),
      R => '0'
    );
\cnt_cur_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_cur_0(6),
      Q => cnt_cur(6),
      R => '0'
    );
\cnt_cur_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_cur_0(7),
      Q => cnt_cur(7),
      R => '0'
    );
\cnt_cur_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_cur_0(8),
      Q => cnt_cur(8),
      R => '0'
    );
tmp_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF1000"
    )
        port map (
      I0 => cnt_cur(4),
      I1 => cnt_cur(3),
      I2 => cnt_cur(2),
      I3 => \cnt_cur[0]_i_2_n_0\,
      I4 => \^clk_16\,
      O => tmp_i_1_n_0
    );
tmp_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tmp_i_1_n_0,
      Q => \^clk_16\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_connect_UART_TX_0_0_FSM_TX is
  port (
    data_out : out STD_LOGIC;
    clk_16 : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    tx_start : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_connect_UART_TX_0_0_FSM_TX : entity is "FSM_TX";
end design_1_connect_UART_TX_0_0_FSM_TX;

architecture STRUCTURE of design_1_connect_UART_TX_0_0_FSM_TX is
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal bit_counter_n_0 : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC;
  signal data_out_i_2_n_0 : STD_LOGIC;
  signal data_shift0 : STD_LOGIC;
  signal \data_shift[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_shift[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_shift_reg_n_0_[0]\ : STD_LOGIC;
  signal en_16 : STD_LOGIC;
  signal en_16_i_1_n_0 : STD_LOGIC;
  signal en_bit : STD_LOGIC;
  signal en_bit_0 : STD_LOGIC;
  signal in9 : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal p_0_in : STD_LOGIC;
  signal rst_16 : STD_LOGIC;
  signal rst_16_1 : STD_LOGIC;
  signal rst_16_i_1_n_0 : STD_LOGIC;
  signal rst_bit : STD_LOGIC;
  signal rst_bit_i_1_n_0 : STD_LOGIC;
  signal sample_counter_n_0 : STD_LOGIC;
  signal sample_counter_n_1 : STD_LOGIC;
  signal sample_counter_n_2 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "idle:001,start:010,transmit_data:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "idle:001,start:010,transmit_data:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "idle:001,start:010,transmit_data:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_shift[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_shift[7]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of en_16_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of rst_16_i_1 : label is "soft_lutpair4";
begin
  data_out <= \^data_out\;
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_16,
      CE => bit_counter_n_0,
      D => en_bit_0,
      PRE => \FSM_onehot_state[2]_i_2_n_0\,
      Q => rst_16_1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_16,
      CE => bit_counter_n_0,
      CLR => \FSM_onehot_state[2]_i_2_n_0\,
      D => rst_16_1,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_16,
      CE => bit_counter_n_0,
      CLR => \FSM_onehot_state[2]_i_2_n_0\,
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => en_bit_0
    );
bit_counter: entity work.design_1_connect_UART_TX_0_0_counter
     port map (
      E(0) => bit_counter_n_0,
      \FSM_onehot_state_reg[0]\ => sample_counter_n_1,
      Q(2) => en_bit_0,
      Q(1) => \FSM_onehot_state_reg_n_0_[1]\,
      Q(0) => rst_16_1,
      clk_16 => clk_16,
      en_bit => en_bit,
      rst_bit => rst_bit,
      tx_start => tx_start
    );
data_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF444F444F444"
    )
        port map (
      I0 => tx_start,
      I1 => rst_16_1,
      I2 => p_0_in,
      I3 => en_bit_0,
      I4 => \data_shift_reg_n_0_[0]\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => data_out_i_2_n_0
    );
data_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_16,
      CE => '1',
      D => sample_counter_n_2,
      Q => \^data_out\,
      R => '0'
    );
\data_shift[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(0),
      I1 => rst_16_1,
      I2 => p_0_in,
      I3 => en_bit_0,
      O => \data_shift[0]_i_1_n_0\
    );
\data_shift[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(1),
      I1 => rst_16_1,
      I2 => in9(1),
      I3 => en_bit_0,
      O => \data_shift[1]_i_1_n_0\
    );
\data_shift[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(2),
      I1 => rst_16_1,
      I2 => in9(2),
      I3 => en_bit_0,
      O => \data_shift[2]_i_1_n_0\
    );
\data_shift[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(3),
      I1 => rst_16_1,
      I2 => in9(3),
      I3 => en_bit_0,
      O => \data_shift[3]_i_1_n_0\
    );
\data_shift[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(4),
      I1 => rst_16_1,
      I2 => in9(4),
      I3 => en_bit_0,
      O => \data_shift[4]_i_1_n_0\
    );
\data_shift[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(5),
      I1 => rst_16_1,
      I2 => in9(5),
      I3 => en_bit_0,
      O => \data_shift[5]_i_1_n_0\
    );
\data_shift[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80808000000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => tx_start,
      I2 => rst_16_1,
      I3 => sample_counter_n_1,
      I4 => en_bit_0,
      I5 => rst_n,
      O => \data_shift[6]_i_1_n_0\
    );
\data_shift[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(6),
      I1 => rst_16_1,
      I2 => in9(6),
      I3 => en_bit_0,
      O => \data_shift[6]_i_3_n_0\
    );
\data_shift[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBFFF88888000"
    )
        port map (
      I0 => \data_shift[7]_i_2_n_0\,
      I1 => rst_n,
      I2 => en_bit_0,
      I3 => sample_counter_n_1,
      I4 => \data_shift[7]_i_3_n_0\,
      I5 => in9(6),
      O => \data_shift[7]_i_1_n_0\
    );
\data_shift[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => en_bit_0,
      I1 => rst_16_1,
      I2 => data_in(7),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \data_shift[7]_i_2_n_0\
    );
\data_shift[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst_16_1,
      I1 => tx_start,
      O => \data_shift[7]_i_3_n_0\
    );
\data_shift_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk_16,
      CE => data_shift0,
      D => \data_shift[0]_i_1_n_0\,
      Q => \data_shift_reg_n_0_[0]\,
      S => \data_shift[6]_i_1_n_0\
    );
\data_shift_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk_16,
      CE => data_shift0,
      D => \data_shift[1]_i_1_n_0\,
      Q => p_0_in,
      S => \data_shift[6]_i_1_n_0\
    );
\data_shift_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk_16,
      CE => data_shift0,
      D => \data_shift[2]_i_1_n_0\,
      Q => in9(1),
      S => \data_shift[6]_i_1_n_0\
    );
\data_shift_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk_16,
      CE => data_shift0,
      D => \data_shift[3]_i_1_n_0\,
      Q => in9(2),
      S => \data_shift[6]_i_1_n_0\
    );
\data_shift_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk_16,
      CE => data_shift0,
      D => \data_shift[4]_i_1_n_0\,
      Q => in9(3),
      S => \data_shift[6]_i_1_n_0\
    );
\data_shift_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk_16,
      CE => data_shift0,
      D => \data_shift[5]_i_1_n_0\,
      Q => in9(4),
      S => \data_shift[6]_i_1_n_0\
    );
\data_shift_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk_16,
      CE => data_shift0,
      D => \data_shift[6]_i_3_n_0\,
      Q => in9(5),
      S => \data_shift[6]_i_1_n_0\
    );
\data_shift_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_16,
      CE => '1',
      D => \data_shift[7]_i_1_n_0\,
      Q => in9(6),
      R => '0'
    );
en_16_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => rst_n,
      I1 => tx_start,
      I2 => rst_16_1,
      I3 => en_16,
      O => en_16_i_1_n_0
    );
en_16_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_16,
      CE => '1',
      D => en_16_i_1_n_0,
      Q => en_16,
      R => '0'
    );
en_bit_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_16,
      CE => '1',
      D => sample_counter_n_0,
      Q => en_bit,
      R => '0'
    );
rst_16_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => tx_start,
      I1 => rst_n,
      I2 => rst_16_1,
      I3 => rst_16,
      O => rst_16_i_1_n_0
    );
rst_16_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_16,
      CE => '1',
      D => rst_16_i_1_n_0,
      Q => rst_16,
      R => '0'
    );
rst_bit_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => rst_n,
      I1 => rst_16_1,
      I2 => rst_bit,
      O => rst_bit_i_1_n_0
    );
rst_bit_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_16,
      CE => '1',
      D => rst_bit_i_1_n_0,
      Q => rst_bit,
      R => '0'
    );
sample_counter: entity work.design_1_connect_UART_TX_0_0_counter_0
     port map (
      Q(2) => en_bit_0,
      Q(1) => \FSM_onehot_state_reg_n_0_[1]\,
      Q(0) => rst_16_1,
      clk_16 => clk_16,
      \cnt_reg[3]_0\ => sample_counter_n_1,
      data_out => \^data_out\,
      data_out_reg => data_out_i_2_n_0,
      data_shift0 => data_shift0,
      en_16 => en_16,
      en_bit => en_bit,
      rst_16 => rst_16,
      rst_n => rst_n,
      rst_n_0 => sample_counter_n_0,
      rst_n_1 => sample_counter_n_2,
      tx_start => tx_start
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_connect_UART_TX_0_0_connect_UART_TX is
  port (
    data_out : out STD_LOGIC;
    clk : in STD_LOGIC;
    tx_start : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_connect_UART_TX_0_0_connect_UART_TX : entity is "connect_UART_TX";
end design_1_connect_UART_TX_0_0_connect_UART_TX;

architecture STRUCTURE of design_1_connect_UART_TX_0_0_connect_UART_TX is
  signal clk_16 : STD_LOGIC;
begin
FSM_UART_TX: entity work.design_1_connect_UART_TX_0_0_FSM_TX
     port map (
      clk_16 => clk_16,
      data_in(7 downto 0) => data_in(7 downto 0),
      data_out => data_out,
      rst_n => rst_n,
      tx_start => tx_start
    );
div_clk: entity work.design_1_connect_UART_TX_0_0_freq_division
     port map (
      clk => clk,
      clk_16 => clk_16
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_connect_UART_TX_0_0 is
  port (
    rst_n : in STD_LOGIC;
    tx_start : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_connect_UART_TX_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_connect_UART_TX_0_0 : entity is "design_1_connect_UART_TX_0_0,connect_UART_TX,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_connect_UART_TX_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_connect_UART_TX_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_connect_UART_TX_0_0 : entity is "connect_UART_TX,Vivado 2020.2";
end design_1_connect_UART_TX_0_0;

architecture STRUCTURE of design_1_connect_UART_TX_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_connect_UART_TX_0_0_connect_UART_TX
     port map (
      clk => clk,
      data_in(7 downto 0) => data_in(7 downto 0),
      data_out => data_out,
      rst_n => rst_n,
      tx_start => tx_start
    );
end STRUCTURE;
