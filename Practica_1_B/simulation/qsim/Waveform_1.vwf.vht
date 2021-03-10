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
-- Generated on "03/07/2021 10:06:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Practica_1_B
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Practica_1_B_vhd_vec_tst IS
END Practica_1_B_vhd_vec_tst;
ARCHITECTURE Practica_1_B_arch OF Practica_1_B_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL D0 : STD_LOGIC;
SIGNAL D1 : STD_LOGIC;
SIGNAL D2 : STD_LOGIC;
SIGNAL D3 : STD_LOGIC;
SIGNAL D4 : STD_LOGIC;
SIGNAL D5 : STD_LOGIC;
SIGNAL D6 : STD_LOGIC;
SIGNAL D7 : STD_LOGIC;
SIGNAL e : STD_LOGIC;
SIGNAL f : STD_LOGIC;
SIGNAL g : STD_LOGIC;
COMPONENT Practica_1_B
	PORT (
	a : OUT STD_LOGIC;
	b : OUT STD_LOGIC;
	c : OUT STD_LOGIC;
	d : OUT STD_LOGIC;
	D0 : IN STD_LOGIC;
	D1 : IN STD_LOGIC;
	D2 : IN STD_LOGIC;
	D3 : IN STD_LOGIC;
	D4 : IN STD_LOGIC;
	D5 : IN STD_LOGIC;
	D6 : IN STD_LOGIC;
	D7 : IN STD_LOGIC;
	e : OUT STD_LOGIC;
	f : OUT STD_LOGIC;
	g : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Practica_1_B
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	d => d,
	D0 => D0,
	D1 => D1,
	D2 => D2,
	D3 => D3,
	D4 => D4,
	D5 => D5,
	D6 => D6,
	D7 => D7,
	e => e,
	f => f,
	g => g
	);

-- D3
t_prcs_D3: PROCESS
BEGIN
	D3 <= '0';
	WAIT FOR 190000 ps;
	D3 <= '1';
	WAIT FOR 160000 ps;
	D3 <= '0';
WAIT;
END PROCESS t_prcs_D3;

-- D2
t_prcs_D2: PROCESS
BEGIN
	D2 <= '1';
	WAIT FOR 60000 ps;
	D2 <= '0';
WAIT;
END PROCESS t_prcs_D2;

-- D1
t_prcs_D1: PROCESS
BEGIN
	D1 <= '0';
	WAIT FOR 90000 ps;
	D1 <= '1';
	WAIT FOR 100000 ps;
	D1 <= '0';
WAIT;
END PROCESS t_prcs_D1;

-- D0
t_prcs_D0: PROCESS
BEGIN
	D0 <= '1';
	WAIT FOR 190000 ps;
	D0 <= '0';
WAIT;
END PROCESS t_prcs_D0;

-- D7
t_prcs_D7: PROCESS
BEGIN
	D7 <= '0';
	WAIT FOR 190000 ps;
	D7 <= '1';
	WAIT FOR 160000 ps;
	D7 <= '0';
WAIT;
END PROCESS t_prcs_D7;

-- D6
t_prcs_D6: PROCESS
BEGIN
	D6 <= '1';
	WAIT FOR 60000 ps;
	D6 <= '0';
WAIT;
END PROCESS t_prcs_D6;

-- D5
t_prcs_D5: PROCESS
BEGIN
	D5 <= '0';
	WAIT FOR 60000 ps;
	D5 <= '1';
	WAIT FOR 30000 ps;
	D5 <= '0';
	WAIT FOR 100000 ps;
	D5 <= '1';
	WAIT FOR 160000 ps;
	D5 <= '0';
WAIT;
END PROCESS t_prcs_D5;

-- D4
t_prcs_D4: PROCESS
BEGIN
	D4 <= '0';
	WAIT FOR 90000 ps;
	D4 <= '1';
	WAIT FOR 100000 ps;
	D4 <= '0';
WAIT;
END PROCESS t_prcs_D4;
END Practica_1_B_arch;
