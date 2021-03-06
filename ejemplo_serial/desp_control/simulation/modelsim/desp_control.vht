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
-- Generated on "06/07/2021 16:05:15"
                                                            
-- Vhdl Test Bench template for design  :  desp_control
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY desp_control_vhd_tst IS
END desp_control_vhd_tst;
ARCHITECTURE desp_control_arch OF desp_control_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ack : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL comp_out : STD_LOGIC;
SIGNAL cont_en : STD_LOGIC;
SIGNAL req : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL rst_cont : STD_LOGIC;
COMPONENT desp_control
	PORT (
	ack : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	comp_out : IN STD_LOGIC;
	cont_en : OUT STD_LOGIC;
	req : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	rst_cont : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : desp_control
	PORT MAP (
-- list connections between master ports and signals
	ack => ack,
	clk => clk,
	comp_out => comp_out,
	cont_en => cont_en,
	req => req,
	rst => rst,
	rst_cont => rst_cont
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
	rst <= '1';
	comp_out <= '0';
	req <= '0';
	wait for 1ns;
	rst <= '0';
	comp_out <= '0';
	req <= '0';
	wait for 4ns;
	rst <= '0';
	comp_out <= '0';
	req <= '0';
	wait for 10ns;
	rst <= '0';
	comp_out <= '0';
	req <= '1';
	wait for 5ns;
	rst <= '0';
	comp_out <= '0';
	req <= '0';
	wait for 25ns;
	rst <= '0';
	comp_out <= '0';
	req <= '1';
	wait for 5ns;
	rst <= '0';
	comp_out <= '0';
	req <= '0';
	wait for 20ns;
	rst <= '0';
	comp_out <= '1';
	req <= '0';
	wait for 5ns;
	rst <= '0';
	comp_out <= '0';
	req <= '0';
	wait for 15ns;
	
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
END desp_control_arch;
