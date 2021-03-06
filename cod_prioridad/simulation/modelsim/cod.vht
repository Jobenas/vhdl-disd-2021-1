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
-- Generated on "05/15/2021 22:10:30"
                                                            
-- Vhdl Test Bench template for design  :  cod
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cod_vhd_tst IS
END cod_vhd_tst;
ARCHITECTURE cod_arch OF cod_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL e : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL z : STD_LOGIC;
COMPONENT cod
	PORT (
	a : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	e : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : cod
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	e => e,
	z => z
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
	e <= "1000";
	wait for 10ns;
	e <= "0100";
	wait for 10ns;
	e <= "0010";
	wait for 10ns;
	e <= "0001";
	wait for 10ns;
	e <= "0000";
	wait for 10ns;
	e <= "1010";
	wait for 10ns;
	e <= "1001";
	wait for 10ns;
	e <= "0110";
	wait for 10ns;
	e <= "0101";
	wait for 10ns;
	e <= "0011";
	wait for 10ns;
	e <= "1111";
	wait for 10ns;
	
WAIT;                                                        
END PROCESS always;                                          
END cod_arch;
