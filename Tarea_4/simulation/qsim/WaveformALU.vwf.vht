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
-- Generated on "03/19/2021 13:18:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          alu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alu_vhd_vec_tst IS
END alu_vhd_vec_tst;
ARCHITECTURE alu_arch OF alu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ledr : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL solAdd : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL solCom : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL solMul : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL solSub : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sw : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT alu
	PORT (
	ledr : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	sel : INOUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	solAdd : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	solCom : INOUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	solMul : INOUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	solSub : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sw : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : alu
	PORT MAP (
-- list connections between master ports and signals
	ledr => ledr,
	sel => sel,
	solAdd => solAdd,
	solCom => solCom,
	solMul => solMul,
	solSub => solSub,
	sw => sw
	);
-- sw[9]
t_prcs_sw_9: PROCESS
BEGIN
	sw(9) <= '1';
WAIT;
END PROCESS t_prcs_sw_9;
-- sw[8]
t_prcs_sw_8: PROCESS
BEGIN
	sw(8) <= '0';
WAIT;
END PROCESS t_prcs_sw_8;
-- sw[7]
t_prcs_sw_7: PROCESS
BEGIN
	sw(7) <= '0';
WAIT;
END PROCESS t_prcs_sw_7;
-- sw[6]
t_prcs_sw_6: PROCESS
BEGIN
	sw(6) <= '0';
WAIT;
END PROCESS t_prcs_sw_6;
-- sw[5]
t_prcs_sw_5: PROCESS
BEGIN
	sw(5) <= '0';
WAIT;
END PROCESS t_prcs_sw_5;
-- sw[4]
t_prcs_sw_4: PROCESS
BEGIN
	sw(4) <= '1';
WAIT;
END PROCESS t_prcs_sw_4;
-- sw[3]
t_prcs_sw_3: PROCESS
BEGIN
	sw(3) <= '1';
WAIT;
END PROCESS t_prcs_sw_3;
-- sw[2]
t_prcs_sw_2: PROCESS
BEGIN
	sw(2) <= '0';
WAIT;
END PROCESS t_prcs_sw_2;
-- sw[1]
t_prcs_sw_1: PROCESS
BEGIN
	sw(1) <= '1';
WAIT;
END PROCESS t_prcs_sw_1;
-- sw[0]
t_prcs_sw_0: PROCESS
BEGIN
	sw(0) <= '0';
WAIT;
END PROCESS t_prcs_sw_0;
END alu_arch;
