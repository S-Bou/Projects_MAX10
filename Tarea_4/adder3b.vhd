library ieee; use ieee.std_logic_1164.all;
use work .fulladder_package.all;

entity adder3b is
	port(Aa3b, Ba3b: in std_logic_vector(0 downto 2);
	     Sa3b: out std_logic_vector(0 downto 3));
end adder3b;

architecture main of adder3b is
	signal Co1Ci2: std_logic;
	signal Co2Ci3: std_logic;

	component fulladder
		port(Afa, Bfa, Cin: in std_logic;
	        Sum, Cout: out std_logic);
	end component;
begin

end main;		  