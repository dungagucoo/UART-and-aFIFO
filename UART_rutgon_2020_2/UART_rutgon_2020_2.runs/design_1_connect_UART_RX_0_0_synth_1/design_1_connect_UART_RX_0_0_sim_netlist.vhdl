-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Dec 17 03:37:32 2023
-- Host        : DESKTOP-GLV9KF3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_connect_UART_RX_0_0_sim_netlist.vhdl
-- Design      : design_1_connect_UART_RX_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter is
  port (
    rst_n_0 : out STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    en_bit : in STD_LOGIC;
    clk_16 : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    \FSM_onehot_state_reg[2]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_bit_0 : in STD_LOGIC;
    Rx : in STD_LOGIC;
    Rx_reg : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC;
    rst_bit : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter is
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2__0_n_0\ : STD_LOGIC;
  signal cnt_bit : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state__2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of WE_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[1]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[3]_i_1__0\ : label is "soft_lutpair1";
begin
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_0\,
      I1 => Rx,
      I2 => rst_bit_0,
      I3 => \FSM_onehot_state[2]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg[1]_0\,
      O => \FSM_onehot_state_reg[2]\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => rst_bit_0,
      O => \FSM_onehot_state_reg[0]\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => rst_bit_0,
      I1 => Rx,
      I2 => \FSM_onehot_state[2]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg[2]_0\,
      O => \FSM_onehot_state_reg[1]\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF080808"
    )
        port map (
      I0 => \FSM_onehot_state_reg[1]_0\,
      I1 => Rx_reg,
      I2 => Rx,
      I3 => \state__2\,
      I4 => \FSM_onehot_state_reg[2]_0\,
      I5 => \FSM_onehot_state_reg[0]_0\,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
WE_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BF8080"
    )
        port map (
      I0 => \state__2\,
      I1 => rst_n,
      I2 => \FSM_onehot_state_reg[2]_0\,
      I3 => \FSM_onehot_state_reg[1]_0\,
      I4 => E(0),
      O => rst_n_0
    );
WE_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => cnt_bit(0),
      I1 => cnt_bit(2),
      I2 => cnt_bit(3),
      I3 => cnt_bit(1),
      O => \state__2\
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0 is
  port (
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    Rx_0 : out STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    \cnt_reg[2]_0\ : out STD_LOGIC;
    en_16 : in STD_LOGIC;
    clk_16 : in STD_LOGIC;
    rst_160 : in STD_LOGIC;
    rst_16_reg : in STD_LOGIC;
    rst_16_reg_0 : in STD_LOGIC;
    rst_16_reg_1 : in STD_LOGIC;
    rst_16 : in STD_LOGIC;
    Rx : in STD_LOGIC;
    rst_bit_0 : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    en_bit : in STD_LOGIC;
    rst_bit : in STD_LOGIC;
    shift_enable_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0 : entity is "counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0 is
  signal \cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal cnt_16 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal en_bit_i_2_n_0 : STD_LOGIC;
  signal en_bit_i_3_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_16_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of en_bit_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of en_bit_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of rst_bit_i_1 : label is "soft_lutpair5";
begin
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => cnt_16(2),
      I1 => cnt_16(0),
      I2 => cnt_16(1),
      I3 => cnt_16(3),
      I4 => rst_bit_0,
      O => \cnt_reg[2]_0\
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_16(0),
      O => plusOp(0)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_16(0),
      I1 => cnt_16(1),
      O => plusOp(1)
    );
\cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt_16(0),
      I1 => cnt_16(1),
      I2 => cnt_16(2),
      O => \cnt[2]_i_1__0_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt_16(1),
      I1 => cnt_16(0),
      I2 => cnt_16(2),
      I3 => cnt_16(3),
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
      Q => cnt_16(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => en_16,
      CLR => \cnt[3]_i_2_n_0\,
      D => plusOp(1),
      Q => cnt_16(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => en_16,
      CLR => \cnt[3]_i_2_n_0\,
      D => \cnt[2]_i_1__0_n_0\,
      Q => cnt_16(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => en_16,
      CLR => \cnt[3]_i_2_n_0\,
      D => plusOp(3),
      Q => cnt_16(3)
    );
en_bit_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFFFF8000000"
    )
        port map (
      I0 => Rx,
      I1 => rst_bit_0,
      I2 => en_bit_i_2_n_0,
      I3 => rst_n,
      I4 => en_bit_i_3_n_0,
      I5 => en_bit,
      O => Rx_0
    );
en_bit_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => rst_16_reg_1,
      I1 => cnt_16(1),
      I2 => cnt_16(0),
      I3 => cnt_16(2),
      I4 => cnt_16(3),
      O => en_bit_i_2_n_0
    );
en_bit_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rst_16_reg_0,
      I1 => rst_16_i_4_n_0,
      I2 => rst_16_reg_1,
      O => en_bit_i_3_n_0
    );
rst_16_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFECEFFFFFECE0"
    )
        port map (
      I0 => rst_160,
      I1 => rst_16_reg,
      I2 => rst_16_reg_0,
      I3 => rst_16_i_4_n_0,
      I4 => rst_16_reg_1,
      I5 => rst_16,
      O => \FSM_onehot_state_reg[0]\
    );
rst_16_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => rst_bit_0,
      I1 => Rx,
      I2 => cnt_16(1),
      I3 => cnt_16(0),
      I4 => cnt_16(2),
      I5 => cnt_16(3),
      O => rst_16_i_4_n_0
    );
rst_bit_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => rst_bit_0,
      I1 => rst_16_reg_0,
      I2 => rst_16_i_4_n_0,
      I3 => rst_bit,
      O => \FSM_onehot_state_reg[1]\
    );
shift_enable_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBF8880"
    )
        port map (
      I0 => en_bit_i_2_n_0,
      I1 => rst_n,
      I2 => rst_16_reg_1,
      I3 => rst_16_reg_0,
      I4 => shift_enable_reg(0),
      O => rst_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_freq_division is
  port (
    clk_16 : out STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_freq_division;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_freq_division is
  signal \^clk_16\ : STD_LOGIC;
  signal cnt_cur : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \cnt_cur[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_cur[5]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_cur[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_cur[8]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_cur[8]_i_4_n_0\ : STD_LOGIC;
  signal cnt_cur_0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal tmp_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_cur[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_cur[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_cur[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_cur[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_cur[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_cur[8]_i_1\ : label is "soft_lutpair9";
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
\cnt_cur[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \cnt_cur[8]_i_3_n_0\,
      I1 => cnt_cur(0),
      I2 => cnt_cur(1),
      O => cnt_cur_0(1)
    );
\cnt_cur[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \cnt_cur[8]_i_3_n_0\,
      I1 => cnt_cur(0),
      I2 => cnt_cur(1),
      I3 => cnt_cur(2),
      O => cnt_cur_0(2)
    );
\cnt_cur[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \cnt_cur[8]_i_3_n_0\,
      I1 => cnt_cur(1),
      I2 => cnt_cur(0),
      I3 => cnt_cur(2),
      I4 => cnt_cur(3),
      O => cnt_cur_0(3)
    );
\cnt_cur[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \cnt_cur[8]_i_3_n_0\,
      I1 => cnt_cur(3),
      I2 => cnt_cur(2),
      I3 => cnt_cur(0),
      I4 => cnt_cur(1),
      I5 => cnt_cur(4),
      O => cnt_cur_0(4)
    );
\cnt_cur[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \cnt_cur[5]_i_2_n_0\,
      I1 => \cnt_cur[8]_i_3_n_0\,
      I2 => cnt_cur(5),
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
\cnt_cur[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \cnt_cur[8]_i_2_n_0\,
      I1 => \cnt_cur[8]_i_3_n_0\,
      I2 => cnt_cur(6),
      O => cnt_cur_0(6)
    );
\cnt_cur[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D020"
    )
        port map (
      I0 => cnt_cur(6),
      I1 => \cnt_cur[8]_i_2_n_0\,
      I2 => \cnt_cur[8]_i_3_n_0\,
      I3 => cnt_cur(7),
      O => cnt_cur_0(7)
    );
\cnt_cur[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF004000"
    )
        port map (
      I0 => \cnt_cur[8]_i_2_n_0\,
      I1 => cnt_cur(6),
      I2 => cnt_cur(7),
      I3 => \cnt_cur[8]_i_3_n_0\,
      I4 => cnt_cur(8),
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
\cnt_cur[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => \cnt_cur[8]_i_4_n_0\,
      I1 => cnt_cur(3),
      I2 => cnt_cur(4),
      I3 => cnt_cur(8),
      I4 => cnt_cur(6),
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reg is
  port (
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_16 : in STD_LOGIC;
    \Q_reg[7]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reg is
begin
\Q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => E(0),
      CLR => \Q_reg[7]_0\,
      D => Q(0),
      Q => data_out(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => E(0),
      CLR => \Q_reg[7]_0\,
      D => Q(1),
      Q => data_out(1)
    );
\Q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => E(0),
      CLR => \Q_reg[7]_0\,
      D => Q(2),
      Q => data_out(2)
    );
\Q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => E(0),
      CLR => \Q_reg[7]_0\,
      D => Q(3),
      Q => data_out(3)
    );
\Q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => E(0),
      CLR => \Q_reg[7]_0\,
      D => Q(4),
      Q => data_out(4)
    );
\Q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => E(0),
      CLR => \Q_reg[7]_0\,
      D => Q(5),
      Q => data_out(5)
    );
\Q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => E(0),
      CLR => \Q_reg[7]_0\,
      D => Q(6),
      Q => data_out(6)
    );
\Q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => E(0),
      CLR => \Q_reg[7]_0\,
      D => Q(7),
      Q => data_out(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shifter is
  port (
    rst_n_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst_n : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Rx : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shifter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shifter is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^rst_n_0\ : STD_LOGIC;
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  rst_n_0 <= \^rst_n_0\;
\Q[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
\tmp_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \^q\(1),
      PRE => \^rst_n_0\,
      Q => \^q\(0)
    );
\tmp_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \^q\(2),
      PRE => \^rst_n_0\,
      Q => \^q\(1)
    );
\tmp_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \^q\(3),
      PRE => \^rst_n_0\,
      Q => \^q\(2)
    );
\tmp_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \^q\(4),
      PRE => \^rst_n_0\,
      Q => \^q\(3)
    );
\tmp_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \^q\(5),
      PRE => \^rst_n_0\,
      Q => \^q\(4)
    );
\tmp_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \^q\(6),
      PRE => \^rst_n_0\,
      Q => \^q\(5)
    );
\tmp_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \^q\(7),
      PRE => \^rst_n_0\,
      Q => \^q\(6)
    );
\tmp_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => Rx,
      PRE => \^rst_n_0\,
      Q => \^q\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FSM_RX is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    shift_enable_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Rx : in STD_LOGIC;
    clk_16 : in STD_LOGIC;
    rst_16_reg_0 : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FSM_RX;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FSM_RX is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal Rx_reg : STD_LOGIC;
  signal bit_counter_n_0 : STD_LOGIC;
  signal bit_counter_n_1 : STD_LOGIC;
  signal bit_counter_n_2 : STD_LOGIC;
  signal bit_counter_n_3 : STD_LOGIC;
  signal en_16 : STD_LOGIC;
  signal en_16_i_1_n_0 : STD_LOGIC;
  signal en_bit : STD_LOGIC;
  signal rst_16 : STD_LOGIC;
  signal rst_160 : STD_LOGIC;
  signal rst_16_i_3_n_0 : STD_LOGIC;
  signal rst_bit : STD_LOGIC;
  signal rst_bit_0 : STD_LOGIC;
  signal sample_counter_n_0 : STD_LOGIC;
  signal sample_counter_n_1 : STD_LOGIC;
  signal sample_counter_n_2 : STD_LOGIC;
  signal sample_counter_n_3 : STD_LOGIC;
  signal sample_counter_n_4 : STD_LOGIC;
  signal \^shift_enable_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "start:010,idle:001,receive_data:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "start:010,idle:001,receive_data:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "start:010,idle:001,receive_data:100";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of en_16_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of rst_16_i_2 : label is "soft_lutpair7";
begin
  E(0) <= \^e\(0);
  shift_enable_reg_0(0) <= \^shift_enable_reg_0\(0);
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_16,
      CE => '1',
      D => bit_counter_n_3,
      PRE => rst_16_reg_0,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_16,
      CE => '1',
      CLR => rst_16_reg_0,
      D => bit_counter_n_2,
      Q => rst_bit_0
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_16,
      CE => '1',
      CLR => rst_16_reg_0,
      D => bit_counter_n_1,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
Rx_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_16,
      CE => '1',
      D => Rx,
      Q => Rx_reg,
      R => '0'
    );
WE_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_16,
      CE => '1',
      D => bit_counter_n_0,
      Q => \^e\(0),
      R => '0'
    );
bit_counter: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
     port map (
      E(0) => \^e\(0),
      \FSM_onehot_state_reg[0]\ => bit_counter_n_2,
      \FSM_onehot_state_reg[0]_0\ => sample_counter_n_4,
      \FSM_onehot_state_reg[1]\ => bit_counter_n_1,
      \FSM_onehot_state_reg[1]_0\ => \FSM_onehot_state_reg_n_0_[0]\,
      \FSM_onehot_state_reg[2]\ => bit_counter_n_3,
      \FSM_onehot_state_reg[2]_0\ => \FSM_onehot_state_reg_n_0_[2]\,
      Rx => Rx,
      Rx_reg => Rx_reg,
      clk_16 => clk_16,
      en_bit => en_bit,
      rst_bit => rst_bit,
      rst_bit_0 => rst_bit_0,
      rst_n => rst_n,
      rst_n_0 => bit_counter_n_0
    );
en_16_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0800"
    )
        port map (
      I0 => rst_n,
      I1 => Rx_reg,
      I2 => Rx,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => en_16,
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
      D => sample_counter_n_1,
      Q => en_bit,
      R => '0'
    );
rst_16_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Rx_reg,
      I1 => Rx,
      O => rst_160
    );
rst_16_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst_bit_0,
      I1 => Rx,
      O => rst_16_i_3_n_0
    );
rst_16_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => '1',
      CLR => rst_16_reg_0,
      D => sample_counter_n_0,
      Q => rst_16
    );
rst_bit_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_16,
      CE => '1',
      CLR => rst_16_reg_0,
      D => sample_counter_n_2,
      Q => rst_bit
    );
sample_counter: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_0
     port map (
      \FSM_onehot_state_reg[0]\ => sample_counter_n_0,
      \FSM_onehot_state_reg[1]\ => sample_counter_n_2,
      Rx => Rx,
      Rx_0 => sample_counter_n_1,
      clk_16 => clk_16,
      \cnt_reg[2]_0\ => sample_counter_n_4,
      en_16 => en_16,
      en_bit => en_bit,
      rst_16 => rst_16,
      rst_160 => rst_160,
      rst_16_reg => rst_16_i_3_n_0,
      rst_16_reg_0 => \FSM_onehot_state_reg_n_0_[0]\,
      rst_16_reg_1 => \FSM_onehot_state_reg_n_0_[2]\,
      rst_bit => rst_bit,
      rst_bit_0 => rst_bit_0,
      rst_n => rst_n,
      rst_n_0 => sample_counter_n_3,
      shift_enable_reg(0) => \^shift_enable_reg_0\(0)
    );
shift_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_16,
      CE => '1',
      D => sample_counter_n_3,
      Q => \^shift_enable_reg_0\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_connect_UART_RX is
  port (
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Rx : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_connect_UART_RX;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_connect_UART_RX is
  signal WE : STD_LOGIC;
  signal clk_16 : STD_LOGIC;
  signal shift_enable : STD_LOGIC;
  signal shifter_RX_n_0 : STD_LOGIC;
  signal tmp : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
Data_reg: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reg
     port map (
      E(0) => WE,
      Q(7 downto 0) => tmp(7 downto 0),
      \Q_reg[7]_0\ => shifter_RX_n_0,
      clk_16 => clk_16,
      data_out(7 downto 0) => data_out(7 downto 0)
    );
FSM_UART_RX: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FSM_RX
     port map (
      E(0) => WE,
      Rx => Rx,
      clk_16 => clk_16,
      rst_16_reg_0 => shifter_RX_n_0,
      rst_n => rst_n,
      shift_enable_reg_0(0) => shift_enable
    );
div_clk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_freq_division
     port map (
      clk => clk,
      clk_16 => clk_16
    );
shifter_RX: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shifter
     port map (
      CLK => clk_16,
      E(0) => shift_enable,
      Q(7 downto 0) => tmp(7 downto 0),
      Rx => Rx,
      rst_n => rst_n,
      rst_n_0 => shifter_RX_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    rst_n : in STD_LOGIC;
    Rx : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_connect_UART_RX_0_0,connect_UART_RX,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "connect_UART_RX,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_connect_UART_RX
     port map (
      Rx => Rx,
      clk => clk,
      data_out(7 downto 0) => data_out(7 downto 0),
      rst_n => rst_n
    );
end STRUCTURE;
