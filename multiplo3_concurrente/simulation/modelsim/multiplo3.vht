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
-- Generated on "04/12/2021 15:46:57"
                                                            
-- Vhdl Test Bench template for design  :  multiplo3
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY multiplo3_vhd_tst IS
END multiplo3_vhd_tst;
ARCHITECTURE multiplo3_arch OF multiplo3_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL f : STD_LOGIC;
COMPONENT multiplo3
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	c : IN STD_LOGIC;
	d : IN STD_LOGIC;
	f : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : multiplo3
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	d => d,
	f => f
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once     
	a <= '0';
	b <= '0';
	c <= '0';
	d <= '0';
	wait for 10ns;
	a <= '0';
	b <= '0';
	c <= '0';
	d <= '1';
	wait for 10ns;
	a <= '0';
	b <= '0';
	c <= '1';
	d <= '0';
	wait for 10ns;
	a <= '0';
	b <= '0';
	c <= '1';
	d <= '1';
	wait for 10ns;
	a <= '0';
	b <= '1';
	c <= '0';
	d <= '0';
	wait for 10ns;
	a <= '0';
	b <= '1';
	c <= '0';
	d <= '1';
	wait for 10ns;
	a <= '0';
	b <= '1';
	c <= '1';
	d <= '0';
	wait for 10ns;
	a <= '0';
	b <= '1';
	c <= '1';
	d <= '1';
	wait for 10ns;
	a <= '1';
	b <= '0';
	c <= '0';
	d <= '0';
	wait for 10ns;
	a <= '1';
	b <= '0';
	c <= '0';
	d <= '1';
	wait for 10ns;
	a <= '1';
	b <= '0';
	c <= '1';
	d <= '0';
	wait for 10ns;
	a <= '1';
	b <= '0';
	c <= '1';
	d <= '1';
	wait for 10ns;
	a <= '1';
	b <= '1';
	c <= '0';
	d <= '0';
	wait for 10ns;
	a <= '1';
	b <= '1';
	c <= '0';
	d <= '1';
	wait for 10ns;
	a <= '1';
	b <= '1';
	c <= '1';
	d <= '0';
	wait for 10ns;
	a <= '1';
	b <= '1';
	c <= '1';
	d <= '1';
	wait for 10ns;
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END multiplo3_arch;
