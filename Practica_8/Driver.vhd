library ieee; 
use ieee.std_logic_1164.all;

entity Driver is
   port(step, dir, res, ena: in std_logic;
	     secu: in std_logic_vector(1 downto 0);
		  state: out integer range 0 to 7;
		  cout: out std_logic_vector(3 downto 0));
end Driver;

architecture main of Driver is
	signal count: integer range 0 to 7;
begin
	 Counter: process(step,dir,res,ena)
	 begin
		if (res = '0') then 
			count <= 0;
		elsif (step'event and step = '1') then
			if (ena = '1') then
				if (dir = '1') then
					count <= count + 1;
				else
					count <= count - 1;
				end if;
			end if;
		end if;
	 end process;
	 state <= count;
	 
	Decoder: process(count)
	begin
		if (secu="00") then -- full-step
			case count is
				when 0 => cout <= "1010";		
				when 1 => cout <= "1001";
				when 2 => cout <= "0101";
				when 3 => cout <= "0110";
				when 4 => cout <= "1010";
				when 5 => cout <= "1001";
				when 6 => cout <= "0101";
				when 7 => cout <= "0110";
				when others => cout <= "0000";
			end case;
						  
		elsif secu="01" then -- wave-step
			case count is
				when 0 => cout <= "1000";		
				when 1 => cout <= "0001";
				when 2 => cout <= "0100";
				when 3 => cout <= "0010";
				when 4 => cout <= "1000";
				when 5 => cout <= "0001";
				when 6 => cout <= "0100";
				when 7 => cout <= "0010";
				when others => cout <= "0000";
			end case;	
		
		elsif secu="10" then -- half-step
			case count is
				when 0 => cout <= "1010";		
				when 1 => cout <= "1000";
				when 2 => cout <= "1001";
				when 3 => cout <= "0001";
				when 4 => cout <= "0101";
				when 5 => cout <= "0100";
				when 6 => cout <= "0110";
				when 7 => cout <= "0010";
				when others => cout <= "0000";
			end case;	
		else
			cout <= "0000";
		end if;
	end process;
end main;

library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package Driver_package is
	component Driver is
		port(step, dir, res, ena: in std_logic;
			  secu: in std_logic_vector(1 downto 0);
			  state: out integer range 0 to 7;
			  cout: out std_logic_vector(3 downto 0));
	end component;
end Driver_package;	