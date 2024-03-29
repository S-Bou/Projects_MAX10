library ieee; use ieee.std_logic_1164.all;

entity seg7 is
	port(bcd: in std_logic_vector(3 downto 0);
	     sg: out std_logic_vector(6 downto 0));
end seg7;

architecture main of seg7 is
			signal leds: std_logic_vector(6 downto 0);
begin
	with bcd select
		leds <= "0111111"when"0000",
			     "0000110"when"0001",
			     "1011011"when"0010",
			     "1001111"when"0011",
			     "1100110"when"0100",
			     "1101101"when"0101",
			     "1111101"when"0110",
			     "0000111"when"0111",
			     "1111111"when"1000",
			     "1101111"when"1001",
				  "1110001"when others;
	sg <= not(leds);
end main;	