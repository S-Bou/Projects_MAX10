library ieee; use ieee.std_logic_1164.all;

entity compar_4 is
	port(A, B:in std_logic_vector(3 downto 0);
		  AeqB, AgtB, AltB: out std_logic);
end compar_4;

Architecture main of compar_4 is
begin
	AeqB <= '1' when A = B else '0';
	AgtB <= '1' when A > B else '0';
	AltB <= '1' when A < B else '0';
end main;