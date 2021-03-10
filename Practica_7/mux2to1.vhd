library ieee; use ieee.std_logic_1164.all;

entity mux2to1 is
	port(w0, w1, s:in std_logic;
		  f: out std_logic);
end mux2to1;

architecture main of mux2to1 is
begin
	f <= w0 when s = '0' else w1;
end main;

library ieee; use ieee.std_logic_1164.all;
package mux2to1_package is
	component mux2to1
		port(w0, w1, s: in std_logic;
	        f: out std_logic);
	end component;
end mux2to1_package;	