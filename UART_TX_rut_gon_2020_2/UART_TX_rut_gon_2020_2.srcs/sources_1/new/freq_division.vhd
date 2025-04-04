library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity freq_division is
generic(N: integer := 652);
  Port (
    clk: in std_logic;
    clk16: out std_logic
    
   );
end freq_division;

architecture Behavioral of freq_division is
    signal tmp: std_logic:='0';
    signal cnt_cur: integer range 1 to N/2;
begin
    process (clk) begin

            if rising_edge (clk) then
                if cnt_cur = N/2 then 
                    tmp <= not tmp;
                    cnt_cur <= 1;
                else 
                    cnt_cur <= cnt_cur+1;
                end if;
            end if;
    end process;
    clk16 <= tmp;
end Behavioral;
