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
-- Generated on "03/18/2021 19:59:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          multiplier3b
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY multiplier3b_vhd_vec_tst IS
END multiplier3b_vhd_vec_tst;
ARCHITECTURE multiplier3b_arch OF multiplier3b_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Am3b : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Bm3b : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Pm6b : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT multiplier3b
	PORT (
	Am3b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Bm3b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Pm6b : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : multiplier3b
	PORT MAP (
-- list connections between master ports and signals
	Am3b => Am3b,
	Bm3b => Bm3b,
	Pm6b => Pm6b
	);
-- Am3b[2]
t_prcs_Am3b_2: PROCESS
BEGIN
	Am3b(2) <= '0';
	WAIT FOR 8000000 ps;
	Am3b(2) <= '1';
	WAIT FOR 32000000 ps;
	Am3b(2) <= '0';
WAIT;
END PROCESS t_prcs_Am3b_2;
-- Am3b[1]
t_prcs_Am3b_1: PROCESS
BEGIN
	Am3b(1) <= '1';
	WAIT FOR 24000000 ps;
	Am3b(1) <= '0';
	WAIT FOR 8000000 ps;
	Am3b(1) <= '1';
	WAIT FOR 8000000 ps;
	Am3b(1) <= '0';
WAIT;
END PROCESS t_prcs_Am3b_1;
-- Am3b[0]
t_prcs_Am3b_0: PROCESS
BEGIN
	Am3b(0) <= '1';
	WAIT FOR 8000000 ps;
	Am3b(0) <= '0';
	WAIT FOR 8000000 ps;
	Am3b(0) <= '1';
	WAIT FOR 24000000 ps;
	Am3b(0) <= '0';
WAIT;
END PROCESS t_prcs_Am3b_0;
-- Bm3b[2]
t_prcs_Bm3b_2: PROCESS
BEGIN
	Bm3b(2) <= '1';
	WAIT FOR 24000000 ps;
	Bm3b(2) <= '0';
	WAIT FOR 8000000 ps;
	Bm3b(2) <= '1';
	WAIT FOR 8000000 ps;
	Bm3b(2) <= '0';
WAIT;
END PROCESS t_prcs_Bm3b_2;
-- Bm3b[1]
t_prcs_Bm3b_1: PROCESS
BEGIN
	Bm3b(1) <= '0';
	WAIT FOR 16000000 ps;
	Bm3b(1) <= '1';
	WAIT FOR 8000000 ps;
	Bm3b(1) <= '0';
	WAIT FOR 8000000 ps;
	Bm3b(1) <= '1';
	WAIT FOR 8000000 ps;
	Bm3b(1) <= '0';
WAIT;
END PROCESS t_prcs_Bm3b_1;
-- Bm3b[0]
t_prcs_Bm3b_0: PROCESS
BEGIN
	Bm3b(0) <= '0';
	WAIT FOR 8000000 ps;
	Bm3b(0) <= '1';
	WAIT FOR 24000000 ps;
	Bm3b(0) <= '0';
WAIT;
END PROCESS t_prcs_Bm3b_0;
END multiplier3b_arch;
