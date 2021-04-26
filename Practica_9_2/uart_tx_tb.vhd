library ieee; use ieee.std_logic_1164.all;
use work.baud_gen_package.all;

entity uart_tx_tb is
end uart_tx_tb;

architecture tb of uart_tx_tb is

	component uart_tx is
		port(
			  tx_data: in std_logic_vector(7 downto 0);
                          baudsel: in std_logic_vector(1 downto 0);	
			  clk_i, reset, tx_en: in std_logic;
			  tx, tx_rdy: out std_logic
			 );
	end component;
	
	-- Internal Signals
	signal tx_data_tb: std_logic_vector(7 downto 0);
        signal bau_sel: std_logic_vector(1 downto 0):="11";
	signal reset_tb, tx_en_tb: std_logic;
        signal clk_i_tb: std_logic:='1';
	signal tx_tb, tx_rdy_tb: std_logic;
	
begin

	-- Sistem Under Test
	SUT: uart_tx port map(tx_data_tb, bau_sel, clk_i_tb, reset_tb, tx_en_tb, tx_tb, tx_rdy_tb);
	
	clk_i_tb <= not clk_i_tb after 10 ns; -- 50MHz clk
	
	data:process 
	begin	
        tx_data_tb <= "00110101";
	wait for 20 ns;
	reset_tb <= '0';
	tx_en_tb <= '0';
	wait for 20 ns;
	reset_tb <= '1';
	wait for 20 ns;
	tx_en_tb <= '1';
	wait for 20 ns;
        wait;
	end process data;

end tb;

	