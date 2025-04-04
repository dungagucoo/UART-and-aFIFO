library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM_TX is
    generic (
        N_DATA: integer := 8;
        N_CNT: integer := 4;
        N_BIT: integer := 4
    );
    Port ( 
        data_in: in std_logic_vector (N_DATA-1 downto 0);
        tx_start: in std_logic;
        clk: in std_logic;
        rst_n: in std_logic;
        data_out: out std_logic
        
    );
end FSM_TX;

architecture Behavioral of FSM_TX is
    component counter 
        generic (N : integer := 4);
        Port ( 
            clk:            in std_logic;
            rst_n:          in std_logic;
            clock_enable:   in std_logic;
            count_out :     out std_logic_vector(N-1 DOWNTO 0)
        );
    end component;
    
    signal en_16: std_logic;
    signal rst_16 : std_logic;
    signal cnt_16 : std_logic_vector (N_CNT - 1 downto 0);
    signal en_bit: std_logic;
    signal rst_bit : std_logic;
    signal cnt_bit : std_logic_vector (N_BIT - 1 downto 0);
    
    signal   state: std_logic_vector(1 downto 0);
    constant IDLE: std_logic_vector(1 downto 0)         := "00";
    constant Start: std_logic_vector(1 downto 0)        := "01";
    constant Shift_data: std_logic_vector(1 downto 0)   := "10";
    
    signal data_shift: std_logic_vector (N_DATA-1 downto 0);
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
 
    process (clk, rst_n) begin
        if rst_n = '0' then
            state   <= IDLE;
            rst_16  <= '0';
            rst_bit <= '0';
        else
            if rising_edge(clk) then
                case state is
                    -----------
                    when IDLE =>
                        data_out    <= '1';                  
                        en_bit      <= '0';
                        en_16       <= '0';
                        if Tx_start = '1' then 
                            state       <= Start;
                            data_out    <= '0';
                            data_shift  <= data_in;
                            rst_16      <= '1';
                            en_16       <= '1';
                            rst_bit     <= '1';
                        end if;
                    -----------
                    when Start =>
                        if cnt_16 = "1111" then
                            data_out <= data_shift(0);
                            state <= Shift_data;
                        end if;
                    -----------
                    when Shift_data =>
                        --ghi data vao khoi nhan du lieu
                        if cnt_16 = "1111" then
                            data_shift <= '1' & data_shift(7 downto 1);
                            data_out <= data_shift(1);
                            en_bit <= '1';
                        else
                            en_bit <= '0';
                        end if;
                        
                        if cnt_bit = "1001" then
                            state <= IDLE;
                            rst_16      <= '0';
                            rst_bit     <= '0';
                        else
                        end if;
                    -----------
                    when others =>
                        state <= IDLE;                  
                end case;
            end if; 
        end if;
    end process;
end Behavioral;
