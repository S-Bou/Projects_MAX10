-- LIBRARY PACKAGES ALU
-----------------------------------------------------------------
-- ADDER 3 Bits
library ieee; use ieee.std_logic_1164.all;
package adder3b_package is
	component adder3b
		port(Aa3b, Ba3b: in std_logic_vector(0 downto 2);
			  Cin3b: in std_logic;
	        Sa3b: out std_logic_vector(0 downto 3));
	end component;
end adder3b_package;	

-----------------------------------------------------------------