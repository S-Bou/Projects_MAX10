library ieee; use ieee.std_logic_1164.all;

entity Codificador83P is
port (input: in std_logic_vector(7 downto 0);
      sieteseg: out std_logic_vector(6 downto 0);
		isvalid: out std_logic);
end Codificador83P;

Architecture main of Codificador83P is
signal bcd: std_logic_vector(2 downto 0);
begin
	bcd<= "111" when input(6)= '1' else
			"110" when input(5)= '1' else
		   "101" when input(4)= '1' else
		   "100" when input(3)= '1' else
			"011" when input(3)= '1' else
			"010" when input(2)= '1' else
			"001" when input(1)= '1' else
			"000";
				 
	isvalid <= '0' when input = "00000000" else '1';
				 
	with bcd select		 
		sieteseg<= "1000000" when "000",
					  "1111001" when "001",
					  "0100100" when "010",
					  "0110000" when "011",
					  "0011001" when "100",
					  "0010010" when "101",
					  "0000010" when "110",
					  "1111000" when "111",
					  "1000000" when others;
end main;					  
				 