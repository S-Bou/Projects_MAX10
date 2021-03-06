library ieee;
use ieee.std_logic_1164.all;

entity Encoder_P is
	port(y0, y1, y2, y3, y4, y5, y6, y7: in std_logic;
		  a, b, c, d: out std_logic);
end Encoder_P;
		  
Architecture Codificador of Encoder_P is 
begin
	a <= ((not y6 and ((not y4 and not y2 and y1) or (not y4 and y3) or (y5))) or (y7));
	b <= ((not y5 and not y4 and ((y2) or (y3))) or (y6) or (y7));
	c <= (y4 or y5 or y6 or y7) ;
	
	d <= y7 or y6 or y5 or y4 or y3 or y2 or y1 or y0;

end Codificador;		