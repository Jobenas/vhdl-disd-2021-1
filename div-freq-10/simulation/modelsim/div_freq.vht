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
-- Generated on "05/17/2021 15:46:45"
                                                            
-- Vhdl Test Bench template for design  :  div_freq
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY div_freq_vhd_tst IS
END div_freq_vhd_tst;
ARCHITECTURE div_freq_arch OF div_freq_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL div_out : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT div_freq
	PORT (
	clk : IN STD_LOGIC;
	div_out : OUT STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : div_freq
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	div_out => div_out,
	rst => rst
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
	rst <= '1';
	wait for 1ns;
	rst <= '0';
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
END div_freq_arch;
