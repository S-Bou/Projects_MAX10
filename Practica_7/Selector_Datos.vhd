library ieee; use ieee.std_logic_1164.all;

entity Selector_datos is
	port(SW: in std_logic_vector(7 downto 0);
	     HEX0: out std_logic_vector(6 downto 0));
end Selector_datos;

Architecture main of Selector_datos is

	component compar_4
		port(A, B: in std_logic_vector(3 downto 0);
		     AeqB, AgtB, AltB: out std_logic);
	end component;
	
	component mux4to4
		port(a, b: in std_logic_vector(3 downto 0);
	        S: in std_logic;
		     m: out std_logic_vector(3 downto 0));
	end component;
	
	component seg7
		port(bcd: in std_logic_vector(3 downto 0);
	        sg: out std_logic_vector(6 downto 0));
	end component;
	
	signal mux: std_logic_vector(3 downto 0);
	signal sel: std_logic;

begin
	
	MU1: compar_4 port map(A=>sw(3 downto 0), B=>sw(7 downto 4), AeqB=>open, AgtB=>open, AltB=>sel);
	MU2: mux4to4 port map(A=>sw(3 downto 0), B=>sw(7 downto 4), s=>sel, m=>mux);
	MU3: seg7 port map (bcd=>mux, sg=>hex0);

end main;	
	