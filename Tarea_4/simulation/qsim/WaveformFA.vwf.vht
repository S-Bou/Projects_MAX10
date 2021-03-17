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
-- Generated on "03/17/2021 10:45:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fulladder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fulladder_vhd_vec_tst IS
END fulladder_vhd_vec_tst;
ARCHITECTURE fulladder_arch OF fulladder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Afa : STD_LOGIC;
SIGNAL Bfa : STD_LOGIC;
SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL Sum : STD_LOGIC;
COMPONENT fulladder
	PORT (
	Afa : IN STD_LOGIC;
	Bfa : IN STD_LOGIC;
	Cin : IN STD_LOGIC;
	Cout : OUT STD_LOGIC;
	Sum : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fulladder
	PORT MAP (
-- list connections between master ports and signals
	Afa => Afa,
	Bfa => Bfa,
	Cin => Cin,
	Cout => Cout,
	Sum => Sum
	);

-- Afa
t_prcs_Afa: PROCESS
BEGIN
	Afa <= '0';
	WAIT FOR 8000000 ps;
	Afa <= '1';
	WAIT FOR 8000000 ps;
	Afa <= '0';
	WAIT FOR 8000000 ps;
	Afa <= '1';
	WAIT FOR 8000000 ps;
	Afa <= '0';
WAIT;
END PROCESS t_prcs_Afa;

-- Bfa
t_prcs_Bfa: PROCESS
BEGIN
	Bfa <= '0';
	WAIT FOR 16000000 ps;
	Bfa <= '1';
	WAIT FOR 16000000 ps;
	Bfa <= '0';
WAIT;
END PROCESS t_prcs_Bfa;

-- Cin
t_prcs_Cin: PROCESS
BEGIN
	Cin <= '0';
WAIT;
END PROCESS t_prcs_Cin;
END fulladder_arch;
