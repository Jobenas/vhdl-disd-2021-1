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
-- Generated on "04/19/2021 16:52:44"
                                                            
-- Vhdl Test Bench template for design  :  fa
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fa_vhd_tst IS
END fa_vhd_tst;
ARCHITECTURE fa_arch OF fa_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL ci : STD_LOGIC;
SIGNAL co : STD_LOGIC;
SIGNAL s : STD_LOGIC;
COMPONENT fa
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	ci : IN STD_LOGIC;
	co : OUT STD_LOGIC;
	s : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fa
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	ci => ci,
	co => co,
	s => s
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once       
	ci <= '0';
	a <= '0';
	b <= '0';
	wait for 10ns;
	ci <= '0';
	a <= '0';
	b <= '1';
	wait for 10ns;
	ci <= '0';
	a <= '1';
	b <= '0';
	wait for 10ns;
	ci <= '0';
	a <= '1';
	b <= '1';
	wait for 10ns;
	ci <= '1';
	a <= '0';
	b <= '0';
	wait for 10ns;
	ci <= '1';
	a <= '0';
	b <= '1';
	wait for 10ns;
	ci <= '1';
	a <= '1';
	b <= '0';
	wait for 10ns;
	ci <= '1';
	a <= '1';
	b <= '1';
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
END fa_arch;
