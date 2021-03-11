library ieee; use ieee.std_logic_1164.all;
library work; use work.mux2to1_package.all;

entity mux4to4 is
	port(a, b: in std_logic_vector(3 downto 0);
	     S: in std_logic;
		  m: out std_logic_vector(3 downto 0));
end mux4to4;

architecture main of mux4to4 is
	component mux2to1
		port(w0, w1, s: in std_logic;
		     f: out std_logic);
   end component;
begin	
	M1: for i in 0 to 3 generate
		Muxes: mux2to1 port map(w0=>a(i), w1=>b(i), s=>S, f=>m(i));
	end generate;
end main;	