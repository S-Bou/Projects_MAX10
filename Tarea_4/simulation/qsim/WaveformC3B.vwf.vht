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
-- Generated on "03/18/2021 20:45:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          comparator3b
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY comparator3b_vhd_vec_tst IS
END comparator3b_vhd_vec_tst;
ARCHITECTURE comparator3b_arch OF comparator3b_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Ac3b : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Bc3b : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Sc2b : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT comparator3b
	PORT (
	Ac3b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Bc3b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Sc2b : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : comparator3b
	PORT MAP (
-- list connections between master ports and signals
	Ac3b => Ac3b,
	Bc3b => Bc3b,
	Sc2b => Sc2b
	);
-- Ac3b[2]
t_prcs_Ac3b_2: PROCESS
BEGIN
	Ac3b(2) <= '0';
	WAIT FOR 8000000 ps;
	Ac3b(2) <= '1';
	WAIT FOR 24000000 ps;
	Ac3b(2) <= '0';
WAIT;
END PROCESS t_prcs_Ac3b_2;
-- Ac3b[1]
t_prcs_Ac3b_1: PROCESS
BEGIN
	Ac3b(1) <= '0';
	WAIT FOR 16000000 ps;
	Ac3b(1) <= '1';
	WAIT FOR 8000000 ps;
	Ac3b(1) <= '0';
	WAIT FOR 8000000 ps;
	Ac3b(1) <= '1';
	WAIT FOR 16000000 ps;
	Ac3b(1) <= '0';
WAIT;
END PROCESS t_prcs_Ac3b_1;
-- Ac3b[0]
t_prcs_Ac3b_0: PROCESS
BEGIN
	Ac3b(0) <= '1';
	WAIT FOR 16000000 ps;
	Ac3b(0) <= '0';
	WAIT FOR 16000000 ps;
	Ac3b(0) <= '1';
	WAIT FOR 8000000 ps;
	Ac3b(0) <= '0';
WAIT;
END PROCESS t_prcs_Ac3b_0;
-- Bc3b[2]
t_prcs_Bc3b_2: PROCESS
BEGIN
	Bc3b(2) <= '0';
	WAIT FOR 8000000 ps;
	Bc3b(2) <= '1';
	WAIT FOR 16000000 ps;
	Bc3b(2) <= '0';
	WAIT FOR 8000000 ps;
	Bc3b(2) <= '1';
	WAIT FOR 8000000 ps;
	Bc3b(2) <= '0';
WAIT;
END PROCESS t_prcs_Bc3b_2;
-- Bc3b[1]
t_prcs_Bc3b_1: PROCESS
BEGIN
	Bc3b(1) <= '0';
	WAIT FOR 8000000 ps;
	Bc3b(1) <= '1';
	WAIT FOR 40000000 ps;
	Bc3b(1) <= '0';
WAIT;
END PROCESS t_prcs_Bc3b_1;
-- Bc3b[0]
t_prcs_Bc3b_0: PROCESS
BEGIN
	Bc3b(0) <= '0';
	WAIT FOR 8000000 ps;
	Bc3b(0) <= '1';
	WAIT FOR 8000000 ps;
	Bc3b(0) <= '0';
	WAIT FOR 16000000 ps;
	Bc3b(0) <= '1';
	WAIT FOR 8000000 ps;
	Bc3b(0) <= '0';
WAIT;
END PROCESS t_prcs_Bc3b_0;
END comparator3b_arch;
