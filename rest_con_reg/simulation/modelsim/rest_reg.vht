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
-- Generated on "05/10/2021 16:51:34"
                                                            
-- Vhdl Test Bench template for design  :  rest_reg
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY rest_reg_vhd_tst IS
END rest_reg_vhd_tst;
ARCHITECTURE rest_reg_arch OF rest_reg_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL r : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL w : STD_LOGIC;
COMPONENT rest_reg
	PORT (
	a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	r : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	rst : IN STD_LOGIC;
	w : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : rest_reg
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	clk => clk,
	r => r,
	rst => rst,
	w => w
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
	rst <= '1';
	a <= "00000000";
	b <= "00000000";
	w <= '0';
	wait for 1ns;
	rst <= '0';
	a <= "00000000";
	b <= "00000000";
	w <= '0';
	wait for 9ns;
	a <= "00001111";
	b <= "00000111";
	w <= '0';
	wait for 10ns;
	a <= "00001111";
	b <= "00000111";
	w <= '1';
	wait for 10ns;
	a <= "00011111";
	b <= "00001101";
	w <= '1';
	wait for 10ns;
	a <= "11111111";
	b <= "01111111";
	w <= '0';
	wait for 10ns;
	a <= "11111111";
	b <= "01111111";
	w <= '1';
	wait for 10ns;
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
END rest_reg_arch;
