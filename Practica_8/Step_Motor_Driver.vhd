library ieee; 
use ieee.std_logic_1164.all;
use work.mux4to1_package.all;
use work.clk_div_package.all;

entity Step_Motor_Driver is
   port(clk_i, reset, u_d: in std_logic:='0';
	     clk_cont, mot_cont: std_logic_vector(1 downto 0);
		  mot_pow: out std_logic_vector(3 downto 0));
		  
end Step_Motor_Driver;

architecture main of Step_Motor_Driver is
	signal clk_X: std_logic_vector(3 downto 0);
	signal clk_mux: std_logic;
begin

 CLK100: clk_div generic map(250000) port map(clk_i, reset, clk_X(0));
 CLK200: clk_div generic map(125000) port map(clk_i, reset, clk_X(1));
 CLK400: clk_div generic map(62500)  port map(clk_i, reset, clk_X(2));
 CLK800: clk_div generic map(31250)  port map(clk_i, reset, clk_X(3));

 MUX4T1: mux4to1 port map(clk_X, clk_cont, clk_mux);
 
 
 
end main;