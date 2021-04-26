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
	signal tx_data_int: std_logic_vector(7 downto 0);
	
	type estados is (idle, start, bittx, stop);
	signal estado, sig_estado: estados;
	
begin

	CLK0: clk_div generic map(5208) port map(clk_i, reset, clk9600);
	
--Clock Process
	SINCRONO: process(clk9600, reset) is
		begin
			if (reset = '0') then
				estado <= idle;
			elsif (clk9600'event and clk9600 = '1') then
				estado <= sig_estado;
			end if;
	end process SINCRONO;

--Output Process and State transition    
uart_tx: process(estado, tx_data, clk9600, reset) is
			variable bit_cnt: natural range 8 downto 0:=0;
			begin

				case estado is
					when idle =>
						tx <= '1';           -- MOORE salidas en estados no en 'if'
						tx_rdy <= '1';
						if tx_en = '1' then
							sig_estado <= start;
						else sig_estado <= idle;
						end if;
			
					when start =>
						tx <= '0';
						tx_rdy <= '0';
						sig_estado <= bittx;
			
					when bittx =>
						if bit_cnt = 8 then
							bit_cnt := 0;
							sig_estado <= stop;
						else
							tx <= tx_data(bit_cnt);				
							bit_cnt := bit_cnt + 1;
						end if;
			
					when stop =>
							tx <= '1';
							tx_rdy <= '0';
							sig_estado <= idle;			
			
					when others => sig_estado <= idle;			
				end case;
		end process uart_tx;
		
end bhv;
			