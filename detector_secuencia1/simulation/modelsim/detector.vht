-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "05/31/2021 15:36:17"
                                                            
-- Vhdl Test Bench template for design  :  detector
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY detector_vhd_tst IS
END detector_vhd_tst;
ARCHITECTURE detector_arch OF detector_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL x : STD_LOGIC;
SIGNAL z : STD_LOGIC;
COMPONENT detector
	PORT (
	clk : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	x : IN STD_LOGIC;
	z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : detector
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	rst => rst,
	x => x,
	z => z
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
	rst <= '1';
	x <= '0';
	wait for 1ns;
	rst <= '0';
	wait for 9ns;
	x <= '1';
	wait for 10ns;
	x <= '0';
	wait for 10ns;
	x <= '1';
	wait for 50ns;
	x <= '0';
	wait for 10ns;
	x <= '1';
	wait for 20ns;
	x <= '0';
	wait for 10ns;
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
	clk <= '1';
	wait for 5ns;
	clk <= '0';
	wait for 5ns;
END PROCESS always;                                          
END detector_arch;
