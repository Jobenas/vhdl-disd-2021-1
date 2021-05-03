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
-- Generated on "05/03/2021 16:30:00"
                                                            
-- Vhdl Test Bench template for design  :  primo
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;   
USE ieee.numeric_std.all;                             

ENTITY primo_vhd_tst IS
END primo_vhd_tst;
ARCHITECTURE primo_arch OF primo_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL num : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL p : STD_LOGIC;
COMPONENT primo
	PORT (
	num : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	p : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : primo
	PORT MAP (
-- list connections between master ports and signals
	num => num,
	p => p
	);
init : PROCESS                                               
-- variable declarations                   
variable temp: integer;                  
BEGIN                                                        
        -- code that executes only once    
	for temp in 0 to 31 loop
		num <= std_logic_vector(to_unsigned(temp,5));
		wait for 10ns;
	end loop;
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
END primo_arch;
