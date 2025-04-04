-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Dec 17 03:37:32 2023
-- Host        : DESKTOP-GLV9KF3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Vivado/_Bai_tap/CSTT/UART_rutgon_2020_2/UART_rutgon_2020_2.gen/sources_1/bd/design_1/ip/design_1_connect_UART_RX_0_0/design_1_connect_UART_RX_0_0_stub.vhdl
-- Design      : design_1_connect_UART_RX_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_connect_UART_RX_0_0 is
  Port ( 
    rst_n : in STD_LOGIC;
    Rx : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end design_1_connect_UART_RX_0_0;

architecture stub of design_1_connect_UART_RX_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst_n,Rx,clk,data_out[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "connect_UART_RX,Vivado 2020.2";
begin
end;
