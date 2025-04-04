library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity connect_UART_TX is
    generic (
        N_DIV   : integer   := 652;
        N_DATA  : integer   := 8;
        N_CNT   : integer   := 4;
        N_BIT   : integer   := 4
     );
    Port ( 
        rst_n       : in std_logic;
        tx_start    : in std_logic;
        clk         : in std_logic;
        data_in     : in std_logic_vector(N_DATA-1 downto 0);
        data_out    : out std_logic
    );
end connect_UART_TX;

architecture Behavioral of connect_UART_TX is
    component FSM_TX 
    generic (
        N_CNT       : integer;
        N_BIT       : integer
    );
    Port ( 
        data_in     : in std_logic_vector (N_DATA-1 downto 0);
        tx_start    : in std_logic;
        clk         : in std_logic;
        rst_n       : in std_logic;
        data_out    : out std_logic
     );
    end component;
    -------------------------------------------

    component freq_division
        generic(N: integer := 326);
        Port (
            clk     : in std_logic;
            clk16   : out std_logic
        );
    end component;
    -- tao signal:
    signal clk_16   : std_logic;
begin
    
    div_clk: freq_division
        generic map (
            N       => N_DIV
            )
        port map (
            clk     => clk,
            clk16   => clk_16
        );
    ----------------------------------------------------------------
    
    FSM_UART_TX: FSM_TX
        generic map (
            N_CNT   => N_CNT,
            N_BIT   => N_BIT
            )
        port map (
            clk     => clk_16,
            rst_n   => rst_n,
            data_in => data_in,
            tx_start=> tx_start,
            data_out=> data_out
        );


end Behavioral;
