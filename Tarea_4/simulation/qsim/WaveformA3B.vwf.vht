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
-- Generated on "03/18/2021 14:17:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          adder3b
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY adder3b_vhd_vec_tst IS
END adder3b_vhd_vec_tst;
ARCHITECTURE adder3b_arch OF adder3b_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Aa3b : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Ba3b : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Cin3b : STD_LOGIC;
SIGNAL Sa3b : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT adder3b
	PORT (
	Aa3b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Ba3b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Cin3b : IN STD_LOGIC;
	Sa3b : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : adder3b
	PORT MAP (
-- list connections between master ports and signals
	Aa3b => Aa3b,
	Ba3b => Ba3b,
	Cin3b => Cin3b,
	Sa3b => Sa3b
	);

-- Cin3b
t_prcs_Cin3b: PROCESS
BEGIN
	Cin3b <= '0';
WAIT;
END PROCESS t_prcs_Cin3b;
-- Aa3b[2]
t_prcs_Aa3b_2: PROCESS
BEGIN
	Aa3b(2) <= '0';
	WAIT FOR 8000000 ps;
	Aa3b(2) <= '1';
	WAIT FOR 24000000 ps;
	Aa3b(2) <= '0';
WAIT;
END PROCESS t_prcs_Aa3b_2;
-- Aa3b[1]
t_prcs_Aa3b_1: PROCESS
BEGIN
	Aa3b(1) <= '1';
	WAIT FOR 8000000 ps;
	Aa3b(1) <= '0';
	WAIT FOR 8000000 ps;
	Aa3b(1) <= '1';
	WAIT FOR 16000000 ps;
	Aa3b(1) <= '0';
WAIT;
END PROCESS t_prcs_Aa3b_1;
-- Aa3b[0]
t_prcs_Aa3b_0: PROCESS
BEGIN
	Aa3b(0) <= '1';
	WAIT FOR 16000000 ps;
	Aa3b(0) <= '0';
	WAIT FOR 8000000 ps;
	Aa3b(0) <= '1';
	WAIT FOR 8000000 ps;
	Aa3b(0) <= '0';
WAIT;
END PROCESS t_prcs_Aa3b_0;
-- Ba3b[2]
t_prcs_Ba3b_2: PROCESS
BEGIN
	Ba3b(2) <= '0';
	WAIT FOR 8000000 ps;
	Ba3b(2) <= '1';
	WAIT FOR 16000000 ps;
	Ba3b(2) <= '0';
WAIT;
END PROCESS t_prcs_Ba3b_2;
-- Ba3b[1]
t_prcs_Ba3b_1: PROCESS
BEGIN
	Ba3b(1) <= '1';
	WAIT FOR 24000000 ps;
	Ba3b(1) <= '0';
WAIT;
END PROCESS t_prcs_Ba3b_1;
-- Ba3b[0]
t_prcs_Ba3b_0: PROCESS
BEGIN
	Ba3b(0) <= '0';
	WAIT FOR 16000000 ps;
	Ba3b(0) <= '1';
	WAIT FOR 16000000 ps;
	Ba3b(0) <= '0';
WAIT;
END PROCESS t_prcs_Ba3b_0;
END adder3b_arch;
