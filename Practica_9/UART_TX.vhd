library ieee; use ieee.std_logic_1164.all;
use work.clk_div_package.all;

entity uart_tx is
	port(
	     tx_data: in std_logic_vector(7 downto 0);
		  clk_i, reset, tx_en: in std_logic;
	     tx, tx_rdy: out std_logic
		 );
end uart_tx;

architecture bhv of uart_tx is

	attribute chip_pin: string;
	attribute chip_pin of tx_en    : signal is "A7"; 
	attribute chip_pin of reset    : signal is "B8"; 
	attribute chip_pin of clk_i    : signal is "N14";
	attribute chip_pin of tx       : signal is "W10"; 
	attribute chip_pin of tx_rdy   : signal is "A8"; 
	attribute chip_pin of tx_data  : signal is "A14, A13, B12, A12, C12, D12, C11, C10"; 

	signal clk9600: std_logic;
	
	type estados is (idle, start, bittx, stop);
	signal estado, sig_estado: estados;
	
begin

	CLK0: clk_div generic map(5208) port map(clk_i, reset, clk9600);
	
	SINCRONO: process(clk9600) is
	begin
		is (reset = '1') then
			estado = idle;
		elsif (clk9600'event and clk9600 = '1') then
			estado <= sig_estado;
		end if;
	end process SINCRONO;
	
	uart_tx: process(estado) is
	begin
		case estado is
			when idle =>
				tx <= '1';
				tx_rdy <= '1';
				
				if tx_en = '1' then
					sig_estado <= start;
				end if;
			
			when start =>
			
			when bittx =>
			
			when stop =>
			
			when others =>
			
		end case;
	
end bhv;

			