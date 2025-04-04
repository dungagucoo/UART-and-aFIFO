library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shifter is
generic (N: integer := 8);
  Port ( 
    Rx: in std_logic;
    clk: in std_logic;
    rst_n: in std_logic;
    shift_enable: in std_logic;
    shift_value: out std_logic_vector(N-1 downto 0)
  );
end shifter;

architecture Behavioral of shifter is
    signal tmp: std_logic_vector(N-1 downto 0):= (others => '1');
begin
    shift_value <= tmp;
    process (clk, rst_n) begin
        if rst_n = '0' then
                tmp <= (others => '1');
        else
            if rising_edge(clk) then
                if shift_enable = '1' then
                    tmp <= Rx & tmp(N-1 downto 1);
                end if;
            end if; 
        end if;
    end process;
end Behavioral;
