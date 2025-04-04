library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM_RX is
    generic (
        N_CNT: integer := 4;
        N_BIT: integer := 4
     );
    Port ( 
        rst_n : in std_logic;
        Rx : in std_logic;
        clk : in std_logic;
        shift_enable : out std_logic;
        WE : out std_logic
    );

end FSM_RX;

architecture Behavioral of FSM_RX is
    component counter 
        generic (N : integer := 4);
        Port ( 
            clk:            in std_logic;
            rst_n:          in std_logic;
            clock_enable:   in std_logic;
            count_out :     out std_logic_vector(N-1 DOWNTO 0)
        );
    end component;
    
    signal   Rx_reg : std_logic;
    
    signal   state: std_logic_vector(1 downto 0);
    constant IDLE: std_logic_vector(1 downto 0)         := "00";
    constant Start: std_logic_vector(1 downto 0)        := "01";
    constant Receive_data: std_logic_vector(1 downto 0) := "10";
    signal en_16: std_logic;
    signal rst_16 : std_logic;
    signal cnt_16 : std_logic_vector (N_CNT - 1 downto 0);
    signal en_bit: std_logic;
    signal rst_bit : std_logic;
    signal cnt_bit : std_logic_vector (N_BIT - 1 downto 0);
begin
    sample_counter: counter
        generic map (N => N_CNT)
        port map (
            clk => clk,
            rst_n => rst_16,
            clock_enable => en_16,
            count_out => cnt_16
        );
    ----------------------------------------
    bit_counter: counter
        generic map (N => N_BIT)
        port map (
            clk => clk,
            rst_n => rst_bit,
            clock_enable => en_bit,
            count_out => cnt_bit
        );
    ----------------------------------------
    reg_RX: process(clk) begin
        if rising_edge(clk) then
            Rx_reg <= Rx;
        end if;
    end process reg_RX;
 
    process (clk, rst_n) begin
        if rst_n = '0' then
            state <= IDLE;
        else
            if rising_edge(clk) then
                case state is
                    -----------
                    when IDLE =>
                        en_bit      <= '0';                 --không cho phe?p ?ê?m bit
                        WE          <= '0';                 --ch?a lâ?y d?? liê?u ra
                        shift_enable<= '0';                 --ch?a lâ?y bit va?o thanh ghi
                        rst_16      <= '0';                 --???t la?i bô? ?ê?m lâ?y mâ?u
                        rst_bit     <= '0';                 --???t la?i bô? ?ê?m bit
                        if Rx = '0' and Rx_reg = '1' then   --?ô?ng bô? d?? liê?u va?o
                            state   <= Start;               --pha?t hiê?t bit start, chuyê?n tra?ng tha?i kiê?m tra bit start
                            rst_16  <= '1';                 --?ê?m lâ?y mâ?u
                            en_16   <= '1';                 --cho phe?p ?ê?m lâ?y mâ?u
                        end if;
                    -----------
                    when Start =>
                        if cnt_16 = "0101" then             
                            if Rx = '0' then                --bit start ?u?ng 
                                state       <= Receive_data;--chuyê?n tra?ng tha?i nhâ?n d?? liê?u
                                rst_16      <= '0';         --???t la?i bô? ?ê?m lâ?y mâ?u
                                rst_bit     <= '1';         --?ê?m bit
                                en_bit      <= '0';         --không cho phe?p ?ê?m bit
                            else
                                state       <= IDLE;        --lô?i ti?n hiê?u
                            end if;
                        end if;
                    -----------
                    when Receive_data =>
                        rst_16 <= '1';                      --?ê?m lâ?y mâ?u
                        if cnt_16 = "1111" then             --lâ?y mâ?u ?? vi? tri? gi??a cu?a bit d?? liê?u
                            shift_enable    <= '1';         --??a bit d?? liê?u va?o thanh ghi di?ch
                            en_bit          <= '1';         --cho phe?p ?ê?m bit  
                        else
                            en_bit          <= '0';         --không cho phe?p ?ê?m bit
                            shift_enable    <= '0';         --không cho phe?p nhâ?n d?? liê?u va?o thanh ghi di?ch
                        end if;
                        
                        if cnt_bit = "1000" then            --pha?t hiê?n ?u? 8 bit d?? liê?u
                            WE              <= '1';         --cho phe?p xuâ?t 8 bit d?? liê?u ra
                            state           <= IDLE;        --tr?? vê? tra?ng tha?i IDLE
                        else
                            WE              <= '0';         --không cho phe?p xuâ?t 8 bit d?? liê?u ra, ch?a ?u? 8 bit d?? liê?u
                        end if;
                    -----------
                    when others =>
                        state               <= IDLE;        
                end case;
            end if; 
        end if;
    end process;
end Behavioral;
