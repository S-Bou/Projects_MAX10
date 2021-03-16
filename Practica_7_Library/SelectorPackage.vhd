library ieee; 
use ieee.std_logic_1164.all;
use work.mux4to4_package.all;
use work.compar_4_package.all;
use work.seg7_package.all;

entity selectorPackage is
	port(SW: in std_logic_vector(7 downto 0);
	     HEX0: out std_logic_vector(6 downto 0));
end selectorPackage;

Architecture main of selectorPackage is
	signal mux: std_logic_vector(3 downto 0);
	signal sel: std_logic;
begin
	MU1: compar_4 port map(A=>SW(3 downto 0), B=>SW(7 downto 4), AeqB=>open, AgtB=>open, AltB=>sel);
	MU2: mux4to4 port map(A=>SW(3 downto 0), B=>SW(7 downto 4), s=>sel, m=>mux);
	MU3: seg7 port map(bcd=>mux, sg=>HEX0);
end main;	
