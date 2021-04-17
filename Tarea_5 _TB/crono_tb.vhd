-- Test Bench to test crono
library ieee; use ieee.std_logic_1164.all;
use work.clk_div_package.all;
use work.modxx_package.all;
use work.bcdto7seg_package.all;

entity crono_tb is
end crono_tb;

architecture tb of crono_tb is 

	component crono is
		port(rest, enab: in std_logic;
			  clk_i: in std_logic:='0';
			  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0));
	end component;		  

   -- Internal signals
	signal rest_tb, enab_tb, clk_i_tb: std_logic;
   signal HEX0_tb, HEX1_tb, HEX2_tb, HEX3_tb, HEX4_tb, HEX5_tb: std_logic_vector(6 downto 0);
	
	-- Constant declaratios
	constant clk_period: time  := 20 ns;
	
begin	
	
	-- Sistem Under Test
	SUT: crono port map(rest_tb, enab_tb, clk_i_tb, HEX0_tb, HEX1_tb, HEX2_tb, HEX3_tb, HEX4_tb, HEX5_tb);
	
	--Clock generation
	clk_i_tb <= not clk_i_tb after clk_period/2;	
	
end tb;