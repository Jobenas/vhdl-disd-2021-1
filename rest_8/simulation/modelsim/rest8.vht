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
-- Generated on "05/03/2021 15:37:26"
                                                            
-- Vhdl Test Bench template for design  :  rest8
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY rest8_vhd_tst IS
END rest8_vhd_tst;
ARCHITECTURE rest8_arch OF rest8_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL r : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT rest8
	PORT (
	a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	r : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : rest8
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	r => r
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once    
	a <= "00001000";
	b <= "00000010";
	wait for 10ns;
	a <= "00010000";
	b <= "00000000";
	wait for 10ns;
	a <= "00010001";
	b <= "00000101";
	wait for 10ns;
	a <= "11111111";
	b <= "11111111";
	wait for 10ns;
WAIT;                                                       
END PROCESS init;                                                                                    
END rest8_arch;
