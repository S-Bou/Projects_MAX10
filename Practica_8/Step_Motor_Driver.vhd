library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mux4to1_package.all;
use work.clk_div_package.all;
use work.Driver_package.all;

entity Step_Motor_Driver is
   port(clk_cont, mot_cont: in std_logic_vector(1 downto 0);
	     clk_i, reset, enable, u_d: in std_logic;		  
		  mot_pow: out std_logic_vector(3 downto 0));
		  
end Step_Motor_Driver;

architecture main of Step_Motor_Driver is
attribute chip_pin: string;
attribute chip_pin of enable: signal is "C10";
attribute chip_pin of reset: signal is "C11";
attribute chip_pin of u_d: signal is "D12";
attribute chip_pin of mot_cont: signal is "C12, A12";
attribute chip_pin of clk_cont: signal is "B12, A13";
attribute chip_pin of mot_pow: signal is "W10, W9, W8, W7";
attribute chip_pin of clk_i: signal is "N14";

	signal clk_X: std_logic_vector(3 downto 0);	
	signal counter: integer range 0 to 7;
	signal clk_mux: std_logic;
begin

 CLK100: clk_div generic map(500000) port map(clk_i, reset, clk_X(0));
 CLK200: clk_div generic map(250000) port map(clk_i, reset, clk_X(1));
 CLK400: clk_div generic map(125000) port map(clk_i, reset, clk_X(2));
 CLK800: clk_div generic map (62500) port map(clk_i, reset, clk_X(3));

 MUX4T1: mux4to1 port map(clk_X, clk_cont, clk_mux);

 Dri: Driver port map(clk_mux, u_d, reset, enable, mot_cont, counter, mot_pow);
 
end main;