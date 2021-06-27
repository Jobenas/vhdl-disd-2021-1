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
-- Generated on "05/17/2021 16:43:24"
                                                            
-- Vhdl Test Bench template for design  :  cont
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cont_vhd_tst IS
END cont_vhd_tst;
ARCHITECTURE cont_arch OF cont_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL cuenta : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL div : STD_LOGIC;
SIGNAL en : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT cont
	PORT (
	clk : IN STD_LOGIC;
	cuenta : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	div : OUT STD_LOGIC;
	en : IN STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : cont
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cuenta => cuenta,
	div => div,
	en => en,
	rst => rst
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
	rst <= '1';
	en <= '1';
	wait for 1ns;
	rst <= '0';
	en <= '1';
	wait for 99ns;
	en <= '0';
	wait for 15ns;
	en <= '1';
	wait for 30ns;
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
	clk <= '1';
	wait for 2.5ns;
	clk <= '0';
	wait for 2.5ns;
END PROCESS always;                                          
END cont_arch;
