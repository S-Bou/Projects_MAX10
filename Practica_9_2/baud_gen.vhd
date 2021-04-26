library ieee; use ieee.std_logic_1164.all;

entity baud_gen is
	port(clk_in, reset: in std_logic;
	     baud: in std_logic_vector(1 downto 0);
	     clk_out: out std_logic);
end baud_gen;		

architecture behavioral of baud_gen is
	signal divider: integer range 0 to 1000000;
	signal contador: integer range 0 to 1000000;
	signal clk_sig: std_logic;	
begin

	process(clk_in, reset)
	begin
		if reset = '0' then divider <= 0;
		elsif rising_edge(clk_in) then
			case baud is
				when "00" => divider   <= 166666; --300
				when "01" => divider   <=  41666; --1200
				when "10" => divider   <=  10416; --4800
				when "11" => divider   <=   3472; --14400
				when others => divider <= 166666; --300
			end case;
		end if;
	end process;

	process (clk_in) 
	begin
		if reset='0' then
			contador <= 0;
			clk_sig <= '0'; 
		elsif rising_edge(clk_in) then
		   if contador = 0 then
				contador <= divider/2;
				clk_sig <= not clk_sig;

			else
				contador <= contador - 1;
			end if;
		end if;
	end process;
	clk_out <= clk_sig;	
end behavioral;

-----------------------------------------------------------------

library ieee; use ieee.std_logic_1164.all;
package baud_gen_package is
	component baud_gen

	port(clk_in, reset: in std_logic;
	     baud: in std_logic_vector(1 downto 0);	
	     clk_out: out std_logic);
	end component;
end baud_gen_package;	