library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity modxx is
	generic(count: integer range 0 to 255);
	port(clk, reset, enable: in std_logic;
	     rco: out std_logic:='0';
	     Q: out std_logic_vector(3 downto 0));
end modxx;

architecture behavior of modxx is	
	signal Qt: integer range 0 to count;
   signal tc: std_logic;
begin
	process(clk, reset, enable) begin
		if reset = '0' then 
			Qt <= 0;
		elsif (clk'event and clk = '1') then   -- elsif rising_edge(clk) then
			if (enable = '1') then
				if Qt = count-1 then 
					Qt <= 0;
				else 	
					Qt <= Qt+1;
				end if;
			end if;
		end if;
		rco <= tc and not clk and enable;
	end process;
	Q <= std_logic_vector(to_unsigned(Qt, 4));
	tc <= '1' when Qt = count-1 else '0';
end behavior;

library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package modxx_package is
	component modxx is
		generic(count: integer range 0 to 255);
		port(clk, reset, enable: in std_logic;
			  rco: out std_logic:='0';
			  Q: out std_logic_vector(3 downto 0));
	end component;
end modxx_package;	