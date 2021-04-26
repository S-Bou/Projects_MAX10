library ieee; use ieee.std_logic_1164.all;
use work.baud_gen_package.all;

entity uart_tx is
	port(
	     tx_data: in std_logic_vector(7 downto 0);
        baudsel: in std_logic_vector(1 downto 0);		  
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
	attribute chip_pin of baudsel  : signal is "F15, B14"; 	

	signal clk9600: std_logic;
	signal count: integer range 0 to 8;
	signal tx_data_int: std_logic_vector(8 downto 0);
	signal paridad: std_logic;
	
	type estados is (idle, start, data, stop);
	signal current_state: estados;
	
begin

	fsm_tx: process(clk9600, reset)
	begin
		if reset = '0' then
		 current_state <= idle;
		 tx <= '1';
		 tx_rdy <= '1';
		 tx_data_int(7 downto 0) <= tx_data;
		 count <= 0;
		elsif rising_edge(clk9600) then
			case current_state is
				when idle =>
					paridad <= tx_data_int(0) xor tx_data_int(1) xor tx_data_int(2) xor tx_data_int(3) xor 
					           tx_data_int(4) xor tx_data_int(5) xor tx_data_int(6) xor tx_data_int(7);
					tx <= '1';
					tx_rdy <= '1';
					tx_data_int(7 downto 0) <= tx_data;
					if tx_en = '1' then
						current_state <= start;
					end if;
				when start =>
					tx <= '0';
					tx_rdy <= '0';
					current_state <= data;
				when data =>
					if count = 8 then
						tx_data_int <= tx_data_int(7 downto 0) & paridad;
						current_state <= stop;
						count <= 0;
					else
						tx <= tx_data_int(count);
						count <= count + 1;
					end if;
				when stop =>
					tx <= '1';
					tx_rdy <= '0';
					current_state <= idle;
				end case;
			end if;
		end process;

	CLK0: baud_gen port map(clk_i, reset, baudsel, clk9600);
		
end bhv;
			