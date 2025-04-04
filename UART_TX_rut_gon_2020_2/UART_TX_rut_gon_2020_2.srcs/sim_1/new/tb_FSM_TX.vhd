library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_FSM_TX is
    generic (
            N_DATA: integer := 8;
            N_CNT: integer := 4;
            N_BIT: integer := 4
        );
--    port( );
end tb_FSM_TX;

    architecture behavioral of tb_FSM_TX is
    constant period_clk: time := 2 ns; 
    
    signal clk: std_logic;      
    signal rst_n: std_logic;
    signal tx_start: std_logic;   
    signal data_in: std_logic_vector (N_DATA-1 downto 0);
    signal data_out: std_logic;       

    component FSM_TX is
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
    end component;
    
    signal data: std_logic_vector(7 downto 0) := "01000110";
begin

    DUT: FSM_TX
        generic map (
            N_CNT => N_CNT,  
            N_BIT => N_CNT   
        )
        port map (
            rst_n => rst_n,
            data_in => data_in,
            clk => clk,
            tx_start => tx_start,
            data_out => data_out
            
        );
    
    clk_process: process
    begin
        clk <= '0';
        wait for period_clk / 2;
        clk <= '1';
        wait for period_clk / 2;
    end process;
    
    stimulus_process: process
    begin
        rst_n <= '0'; 
        tx_start <= '0';
        wait for period_clk * 20;
        
        rst_n <= '1';  
        wait for period_clk * 2;
        
        data_in <= data;
        tx_start <= '1';
        wait for period_clk * 5 * 16;
        data_in <= not data;
        tx_start <= '1';
        wait for period_clk * 5 * 40;
        tx_start <= '0';
        wait;
    end process;
    
end behavioral;
