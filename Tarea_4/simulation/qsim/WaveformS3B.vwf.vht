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
-- Generated on "03/18/2021 18:46:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          subtractor3b
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY subtractor3b_vhd_vec_tst IS
END subtractor3b_vhd_vec_tst;
ARCHITECTURE subtractor3b_arch OF subtractor3b_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL As3b : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Bin3b : STD_LOGIC;
SIGNAL Bs3b : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Ds3b : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT subtractor3b
	PORT (
	As3b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Bin3b : IN STD_LOGIC;
	Bs3b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Ds3b : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : subtractor3b
	PORT MAP (
-- list connections between master ports and signals
	As3b => As3b,
	Bin3b => Bin3b,
	Bs3b => Bs3b,
	Ds3b => Ds3b
	);

-- Bin3b
t_prcs_Bin3b: PROCESS
BEGIN
	Bin3b <= '0';
WAIT;
END PROCESS t_prcs_Bin3b;
-- As3b[2]
t_prcs_As3b_2: PROCESS
BEGIN
	As3b(2) <= '1';
	WAIT FOR 16000000 ps;
	As3b(2) <= '0';
	WAIT FOR 16000000 ps;
	As3b(2) <= '1';
	WAIT FOR 8000000 ps;
	As3b(2) <= '0';
WAIT;
END PROCESS t_prcs_As3b_2;
-- As3b[1]
t_prcs_As3b_1: PROCESS
BEGIN
	As3b(1) <= '0';
	WAIT FOR 8000000 ps;
	As3b(1) <= '1';
	WAIT FOR 24000000 ps;
	As3b(1) <= '0';
WAIT;
END PROCESS t_prcs_As3b_1;
-- As3b[0]
t_prcs_As3b_0: PROCESS
BEGIN
	As3b(0) <= '1';
	WAIT FOR 8000000 ps;
	As3b(0) <= '0';
	WAIT FOR 8000000 ps;
	As3b(0) <= '1';
	WAIT FOR 8000000 ps;
	As3b(0) <= '0';
WAIT;
END PROCESS t_prcs_As3b_0;
-- Bs3b[2]
t_prcs_Bs3b_2: PROCESS
BEGIN
	Bs3b(2) <= '0';
	WAIT FOR 8000000 ps;
	Bs3b(2) <= '1';
	WAIT FOR 24000000 ps;
	Bs3b(2) <= '0';
WAIT;
END PROCESS t_prcs_Bs3b_2;
-- Bs3b[1]
t_prcs_Bs3b_1: PROCESS
BEGIN
	Bs3b(1) <= '1';
	WAIT FOR 8000000 ps;
	Bs3b(1) <= '0';
	WAIT FOR 16000000 ps;
	Bs3b(1) <= '1';
	WAIT FOR 8000000 ps;
	Bs3b(1) <= '0';
WAIT;
END PROCESS t_prcs_Bs3b_1;
-- Bs3b[0]
t_prcs_Bs3b_0: PROCESS
BEGIN
	Bs3b(0) <= '1';
	WAIT FOR 16000000 ps;
	Bs3b(0) <= '0';
	WAIT FOR 16000000 ps;
	Bs3b(0) <= '1';
	WAIT FOR 8000000 ps;
	Bs3b(0) <= '0';
WAIT;
END PROCESS t_prcs_Bs3b_0;
END subtractor3b_arch;
