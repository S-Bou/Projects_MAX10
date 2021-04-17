-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/22/2021 10:14:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          crono
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY crono_vhd_vec_tst IS
END crono_vhd_vec_tst;
ARCHITECTURE crono_arch OF crono_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_i : STD_LOGIC;
SIGNAL clk_o : STD_LOGIC;
COMPONENT crono
	PORT (
	clk_i : IN STD_LOGIC;
	clk_o : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : crono
	PORT MAP (
-- list connections between master ports and signals
	clk_i => clk_i,
	clk_o => clk_o
	);

-- clk_i
t_prcs_clk_i: PROCESS
BEGIN
LOOP
	clk_i <= '0';
	WAIT FOR 10000 ps;
	clk_i <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_i;
END crono_arch;
