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

-- Generated by Quartus Prime Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition
-- Created on Sun Feb 28 11:03:04 2021

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY SM_MPP IS
    PORT (
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC := '0';
        Enable : IN STD_LOGIC := '0';
        Up_Down : IN STD_LOGIC := '0';
        Half_Full : IN STD_LOGIC := '0';
        A : OUT STD_LOGIC;
        B : OUT STD_LOGIC;
        C : OUT STD_LOGIC;
        D : OUT STD_LOGIC
    );
END SM_MPP;

ARCHITECTURE BEHAVIOR OF SM_MPP IS
    TYPE type_fstate IS (Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reset,reg_fstate)
    BEGIN
        IF (reset='0') THEN
            fstate <= Q1;
        ELSIF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,Enable,Up_Down,Half_Full)
    BEGIN
        A <= '0';
        B <= '0';
        C <= '0';
        D <= '0';
        CASE fstate IS
            WHEN Q1 =>
                IF ((((Enable = '1') AND (Up_Down = '1')) AND NOT((Half_Full = '1')))) THEN
                    reg_fstate <= Q3;
                ELSIF ((((Enable = '1') AND NOT((Up_Down = '1'))) AND NOT((Half_Full = '1')))) THEN
                    reg_fstate <= Q7;
                ELSIF ((((Enable = '1') AND (Up_Down = '1')) AND (Half_Full = '1'))) THEN
                    reg_fstate <= Q2;
                ELSIF ((((Enable = '1') AND NOT((Up_Down = '1'))) AND (Half_Full = '1'))) THEN
                    reg_fstate <= Q8;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= Q1;
                END IF;

                C <= '0';

                B <= '1';

                D <= '1';

                A <= '0';
            WHEN Q2 =>
                IF ((((Enable = '1') AND (Up_Down = '1')) AND (Half_Full = '1'))) THEN
                    reg_fstate <= Q3;
                ELSIF ((((Enable = '1') AND NOT((Up_Down = '1'))) AND (Half_Full = '1'))) THEN
                    reg_fstate <= Q1;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= Q2;
                END IF;

                IF ((Half_Full = '1')) THEN
                    C <= '0';
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    C <= '0';
                END IF;

                IF ((Half_Full = '1')) THEN
                    B <= '0';
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    B <= '0';
                END IF;

                IF ((Half_Full = '1')) THEN
                    D <= '1';
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    D <= '0';
                END IF;

                IF ((Half_Full = '1')) THEN
                    A <= '0';
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    A <= '0';
                END IF;
            WHEN Q3 =>
                IF ((((Enable = '1') AND (Up_Down = '1')) AND NOT((Half_Full = '1')))) THEN
                    reg_fstate <= Q5;
                ELSIF ((((Enable = '1') AND NOT((Up_Down = '1'))) AND NOT((Half_Full = '1')))) THEN
                    reg_fstate <= Q1;
                ELSIF ((((Enable = '1') AND (Up_Down = '1')) AND (Half_Full = '1'))) THEN
                    reg_fstate <= Q4;
                ELSIF ((((Enable = '1') AND NOT((Up_Down = '1'))) AND (Half_Full = '1'))) THEN
                    reg_fstate <= Q2;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= Q3;
                END IF;

                C <= '0';

                B <= '0';

                D <= '1';

                A <= '1';
            WHEN Q4 =>
                IF ((((Enable = '1') AND (Up_Down = '1')) AND (Half_Full = '1'))) THEN
                    reg_fstate <= Q5;
                ELSIF ((((Enable = '1') AND NOT((Up_Down = '1'))) AND (Half_Full = '1'))) THEN
                    reg_fstate <= Q3;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= Q4;
                END IF;

                IF ((Half_Full = '1')) THEN
                    C <= '0';
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    C <= '0';
                END IF;

                IF ((Half_Full = '1')) THEN
                    B <= '0';
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    B <= '0';
                END IF;

                IF ((Half_Full = '1')) THEN
                    D <= '0';
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    D <= '0';
                END IF;

                IF ((Half_Full = '1')) THEN
                    A <= '1';
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    A <= '0';
                END IF;
            WHEN Q5 =>
                IF ((((Enable = '1') AND (Up_Down = '1')) AND NOT((Half_Full = '1')))) THEN
                    reg_fstate <= Q7;
                ELSIF ((((Enable = '1') AND NOT((Up_Down = '1'))) AND NOT((Half_Full = '1')))) THEN
                    reg_fstate <= Q3;
                ELSIF ((((Enable = '1') AND (Up_Down = '1')) AND (Half_Full = '1'))) THEN
                    reg_fstate <= Q6;
                ELSIF ((((Enable = '1') AND NOT((Up_Down = '1'))) AND (Half_Full = '1'))) THEN
                    reg_fstate <= Q4;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= Q5;
                END IF;

                C <= '1';

                B <= '0';

                D <= '0';

                A <= '1';
            WHEN Q6 =>
                IF ((((Enable = '1') AND (Up_Down = '1')) AND (Half_Full = '1'))) THEN
                    reg_fstate <= Q7;
                ELSIF ((((Enable = '1') AND NOT((Up_Down = '1'))) AND (Half_Full = '1'))) THEN
                    reg_fstate <= Q5;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= Q6;
                END IF;

                IF ((Half_Full = '1')) THEN
                    C <= '1';
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    C <= '0';
                END IF;

                IF ((Half_Full = '1')) THEN
                    B <= '0';
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    B <= '0';
                END IF;

                IF ((Half_Full = '1')) THEN
                    D <= '0';
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    D <= '0';
                END IF;

                IF ((Half_Full = '1')) THEN
                    A <= '0';
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    A <= '0';
                END IF;
            WHEN Q7 =>
                IF ((((Enable = '1') AND (Up_Down = '1')) AND NOT((Half_Full = '1')))) THEN
                    reg_fstate <= Q1;
                ELSIF ((((Enable = '1') AND NOT((Up_Down = '1'))) AND NOT((Half_Full = '1')))) THEN
                    reg_fstate <= Q5;
                ELSIF ((((Enable = '1') AND (Up_Down = '1')) AND (Half_Full = '1'))) THEN
                    reg_fstate <= Q8;
                ELSIF ((((Enable = '1') AND NOT((Up_Down = '1'))) AND (Half_Full = '1'))) THEN
                    reg_fstate <= Q6;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= Q7;
                END IF;

                C <= '1';

                B <= '1';

                D <= '0';

                A <= '0';
            WHEN Q8 =>
                IF ((((Enable = '1') AND (Up_Down = '1')) AND (Half_Full = '1'))) THEN
                    reg_fstate <= Q1;
                ELSIF ((((Enable = '1') AND NOT((Up_Down = '1'))) AND (Half_Full = '1'))) THEN
                    reg_fstate <= Q7;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= Q8;
                END IF;

                IF ((Half_Full = '1')) THEN
                    C <= '0';
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    C <= '0';
                END IF;

                IF ((Half_Full = '1')) THEN
                    B <= '1';
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    B <= '0';
                END IF;

                IF ((Half_Full = '1')) THEN
                    D <= '0';
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    D <= '0';
                END IF;

                IF ((Half_Full = '1')) THEN
                    A <= '0';
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    A <= '0';
                END IF;
            WHEN OTHERS => 
                A <= 'X';
                B <= 'X';
                C <= 'X';
                D <= 'X';
                report "Reach undefined state";
        END CASE;
    END PROCESS;
END BEHAVIOR;