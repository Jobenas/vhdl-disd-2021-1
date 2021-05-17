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
-- Generated on "05/10/2021 15:57:40"
                                                            
-- Vhdl Test Bench template for design  :  reg2
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY reg2_vhd_tst IS
END reg2_vhd_tst;
ARCHITECTURE reg2_arch OF reg2_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT reg2
	PORT (
	clk : IN STD_LOGIC;
	d : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : reg2
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	d => d,
	q => q,
	rst => rst
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
	rst <= '1';
	d <= "00";
	wait for 1ns;
	rst <= '0';
	d <= "00";
	wait for 9ns;
	d <= "10";
	wait for 30ns;
	d <= "01";
	wait for 15ns;
	d <= "11";
	wait for 15ns;
	
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
	clk <= '0';
	wait for 5ns;
	clk <= '1';
	wait for 5ns;
END PROCESS always;                                          
END reg2_arch;
