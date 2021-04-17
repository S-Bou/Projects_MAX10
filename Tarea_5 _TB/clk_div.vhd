library ieee; use ieee.std_logic_1164.all;

entity clk_div is
	generic(divider: integer range 0 to 50000000);
	port(clk_in, reset: in std_logic;
	     clk_out: out std_logic);
end clk_div;		

architecture behavioral of clk_div is
	signal clk_sig: std_logic:='0';
	signal contador: integer range 0 to divider;
begin
	clk_out <= clk_sig;
	
	process (clk_in, reset) begin
		if rising_edge(clk_in) and reset='1' then
			if (contador = divider) then
				clk_sig <= not(clk_sig);
				contador <= 0;
			else
				contador <= contador+1;
			end if;
		end if;
	end process;
end behavioral;

-----------------------------------------------------------------

library ieee; use ieee.std_logic_1164.all;
package clk_div_package is
	component clk_div
		generic(divider: integer range 0 to 50000000);
		port(clk_in, reset: in std_logic;
			  clk_out: out std_logic);
	end component;
end clk_div_package;	