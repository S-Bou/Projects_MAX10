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
-- Generated on "03/11/2021 11:41:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          EjemploKeys
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY EjemploKeys_vhd_vec_tst IS
END EjemploKeys_vhd_vec_tst;
ARCHITECTURE EjemploKeys_arch OF EjemploKeys_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL a1 : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL b1 : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL c1 : STD_LOGIC;
SIGNAL Clock : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL d1 : STD_LOGIC;
SIGNAL e : STD_LOGIC;
SIGNAL e1 : STD_LOGIC;
SIGNAL f : STD_LOGIC;
SIGNAL f1 : STD_LOGIC;
SIGNAL g : STD_LOGIC;
SIGNAL g1 : STD_LOGIC;
SIGNAL KEY0 : STD_LOGIC;
SIGNAL KEY1 : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
COMPONENT EjemploKeys
	PORT (
	a : OUT STD_LOGIC;
	a1 : OUT STD_LOGIC;
	b : OUT STD_LOGIC;
	b1 : OUT STD_LOGIC;
	c : OUT STD_LOGIC;
	c1 : OUT STD_LOGIC;
	Clock : IN STD_LOGIC;
	d : OUT STD_LOGIC;
	d1 : OUT STD_LOGIC;
	e : OUT STD_LOGIC;
	e1 : OUT STD_LOGIC;
	f : OUT STD_LOGIC;
	f1 : OUT STD_LOGIC;
	g : OUT STD_LOGIC;
	g1 : OUT STD_LOGIC;
	KEY0 : IN STD_LOGIC;
	KEY1 : IN STD_LOGIC;
	Reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : EjemploKeys
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	a1 => a1,
	b => b,
	b1 => b1,
	c => c,
	c1 => c1,
	Clock => Clock,
	d => d,
	d1 => d1,
	e => e,
	e1 => e1,
	f => f,
	f1 => f1,
	g => g,
	g1 => g1,
	KEY0 => KEY0,
	KEY1 => KEY1,
	Reset => Reset
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '0';
WAIT;
END PROCESS t_prcs_Reset;

-- KEY0
t_prcs_KEY0: PROCESS
BEGIN
	KEY0 <= '1';
	WAIT FOR 2000000 ps;
	KEY0 <= '0';
	WAIT FOR 1000000 ps;
	KEY0 <= '1';
	WAIT FOR 1000000 ps;
	KEY0 <= '0';
	WAIT FOR 1000000 ps;
	KEY0 <= '1';
	WAIT FOR 1000000 ps;
	KEY0 <= '0';
	WAIT FOR 1000000 ps;
	KEY0 <= '1';
	WAIT FOR 4000000 ps;
	KEY0 <= '0';
	WAIT FOR 1000000 ps;
	KEY0 <= '1';
	WAIT FOR 5000000 ps;
	KEY0 <= '0';
	WAIT FOR 1000000 ps;
	KEY0 <= '1';
	WAIT FOR 4000000 ps;
	KEY0 <= '0';
	WAIT FOR 1000000 ps;
	KEY0 <= '1';
WAIT;
END PROCESS t_prcs_KEY0;

-- KEY1
t_prcs_KEY1: PROCESS
BEGIN
	KEY1 <= '1';
	WAIT FOR 2000000 ps;
	KEY1 <= '0';
	WAIT FOR 1000000 ps;
	KEY1 <= '1';
	WAIT FOR 1000000 ps;
	KEY1 <= '0';
	WAIT FOR 1000000 ps;
	KEY1 <= '1';
	WAIT FOR 1000000 ps;
	KEY1 <= '0';
	WAIT FOR 1000000 ps;
	KEY1 <= '1';
	WAIT FOR 4000000 ps;
	KEY1 <= '0';
	WAIT FOR 1000000 ps;
	KEY1 <= '1';
	WAIT FOR 5000000 ps;
	KEY1 <= '0';
	WAIT FOR 1000000 ps;
	KEY1 <= '1';
	WAIT FOR 4000000 ps;
	KEY1 <= '0';
	WAIT FOR 1000000 ps;
	KEY1 <= '1';
WAIT;
END PROCESS t_prcs_KEY1;
END EjemploKeys_arch;
