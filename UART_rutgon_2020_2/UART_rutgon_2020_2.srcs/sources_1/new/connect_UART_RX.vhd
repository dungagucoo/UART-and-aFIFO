library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity connect_UART_RX is
    generic (
        N_DIV   : integer   := 652;
        N_DATA  : integer   := 8;
        N_CNT   : integer   := 4;
        N_BIT   : integer   := 4
     );
    Port ( 
        rst_n   : in std_logic;
        Rx      : in std_logic;
        clk     : in std_logic;
        data_out: out std_logic_vector(N_DATA-1 downto 0)
    );
end connect_UART_RX;

architecture Behavioral of connect_UART_RX is
    component FSM_RX 
        generic (
            N_CNT       : integer;
            N_BIT       : integer
        );
        Port ( 
            rst_n       : in std_logic;
            Rx          : in std_logic;
            clk         : in std_logic;
            shift_enable: out std_logic;
            WE          : out std_logic
        );
    end component;
    -------------------------------------------
    component shifter
        generic (N: integer);
        Port ( 
            Rx          : in std_logic;
            clk         : in std_logic;
            rst_n       : in std_logic;
            shift_enable: in std_logic;
            shift_value : inout std_logic_vector(N-1 downto 0)
        );
    end component;
    -------------------------------------------
    component reg
        generic (N: integer);
    port(
        WE : in std_logic; 
        D : in std_logic_vector(N-1 downto 0);
        clk : in std_logic;
        rst_n : in std_logic;
        Q : out std_logic_vector(N-1 downto 0)
    );
    end component;
    -------------------------------------------
    component freq_division
        generic(N: integer := 326);
        Port (
            clk: in std_logic;
--            rst_n: in std_logic;
            clk16: out std_logic
        );
    end component;
    -- tao signal:
    signal clk_16: std_logic;
    signal shift_enable: std_logic;
    signal WE: std_logic;
    signal shift_value: std_logic_vector(N_DATA -1 downto 0);
begin
    
    div_clk: freq_division
        generic map (
            N => N_DIV
            )
        port map (
            clk => clk,
--            rst_n => rst_n,
            clk16 => clk_16
        );
    ----------------------------------------------------------------
    
    FSM_UART_RX: FSM_RX
        generic map (
            N_CNT => N_CNT,
            N_BIT => N_BIT
            )
        port map (
            clk => clk_16,
            rst_n => rst_n,
            Rx => Rx,
            shift_enable => shift_enable,
            WE => WE
        );
    ----------------------------------------------------------------
    shifter_RX: shifter
        generic map (
            N => N_DATA
            )
        port map (
            clk => clk_16,
            rst_n => rst_n,
            Rx => Rx,
            shift_enable => shift_enable,
            shift_value => shift_value
        );
    ----------------------------------------------------------------
    Data_reg: reg
        generic map (
            N => N_DATA
            )
        port map (
            clk => clk_16,
            rst_n => rst_n,
            WE => WE,
            Q => data_out,
            D => shift_value
        );
end Behavioral;
