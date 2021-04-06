library ieee; use ieee.std_logic_1164.all;
use work.clk_div_package.all;
use work.modxx_package.all;
use work.bcdto7seg_package.all;

entity crono is
	port(rest, enab: in std_logic;
	     clk_i: in std_logic:='0';
		  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0));
end crono;

architecture behavioral of crono is
	signal bcd0, bcd1, bcd2, bcd3, bcd4, bcd5: std_logic_vector(3 downto 0);
	signal clk_out: std_logic;
   signal rc01, rc12, rc23, rc34, rc45: std_logic;	
begin

	DIV: clk_div generic map(250000) port map(clk_i, rest, clk_out);
	
	MOD10_0: modxx generic map(10) port map(clk_out, rest, enab, rc01, bcd0);
	SEG7_0: bcdto7seg port map(bcd0, HEX0); 
	
	MOD10_1: modxx generic map(10) port map(clk_out, rest, rc01, rc12, bcd1);
	SEG7_1: bcdto7seg port map(bcd1, HEX1);	
	
	MOD10_2: modxx generic map(10) port map(clk_out, rest, rc12, rc23, bcd2);
	SEG7_2: bcdto7seg port map(bcd2, HEX2);	
	
	MOD10_3: modxx generic map(6) port map(clk_out, rest, rc23, rc34, bcd3);
	SEG7_3: bcdto7seg port map(bcd3, HEX3);

	MOD10_4: modxx generic map(10) port map(clk_out, rest, rc34, rc45, bcd4);
	SEG7_4: bcdto7seg port map(bcd4, HEX4);

	MOD10_5: modxx generic map(6) port map(clk_out, rest, rc45, open, bcd5);
	SEG7_5: bcdto7seg port map(bcd5, HEX5);	

end behavioral;