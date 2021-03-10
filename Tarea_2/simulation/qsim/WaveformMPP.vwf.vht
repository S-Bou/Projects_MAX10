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
-- Generated on "03/08/2021 10:56:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          M_PasoAPaso
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY M_PasoAPaso_vhd_vec_tst IS
END M_PasoAPaso_vhd_vec_tst;
ARCHITECTURE M_PasoAPaso_arch OF M_PasoAPaso_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL CLK_INPUT : STD_LOGIC;
SIGNAL CLK_OUTPUT : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL Enable : STD_LOGIC;
SIGNAL Half_Full : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
SIGNAL Up_Down : STD_LOGIC;
COMPONENT M_PasoAPaso
	PORT (
	A : OUT STD_LOGIC;
	B : OUT STD_LOGIC;
	C : OUT STD_LOGIC;
	CLK_INPUT : IN STD_LOGIC;
	CLK_OUTPUT : OUT STD_LOGIC;
	D : OUT STD_LOGIC;
	Enable : IN STD_LOGIC;
	Half_Full : IN STD_LOGIC;
	Reset : IN STD_LOGIC;
	Up_Down : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : M_PasoAPaso
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	CLK_INPUT => CLK_INPUT,
	CLK_OUTPUT => CLK_OUTPUT,
	D => D,
	Enable => Enable,
	Half_Full => Half_Full,
	Reset => Reset,
	Up_Down => Up_Down
	);

-- CLK_INPUT
t_prcs_CLK_INPUT: PROCESS
BEGIN
LOOP
	CLK_INPUT <= '0';
	WAIT FOR 1000 ps;
	CLK_INPUT <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_INPUT;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '1';
WAIT;
END PROCESS t_prcs_Reset;

-- Enable
t_prcs_Enable: PROCESS
BEGIN
	Enable <= '1';
WAIT;
END PROCESS t_prcs_Enable;

-- Up_Down
t_prcs_Up_Down: PROCESS
BEGIN
	Up_Down <= '0';
WAIT;
END PROCESS t_prcs_Up_Down;

-- Half_Full
t_prcs_Half_Full: PROCESS
BEGIN
	Half_Full <= '0';
WAIT;
END PROCESS t_prcs_Half_Full;
END M_PasoAPaso_arch;
