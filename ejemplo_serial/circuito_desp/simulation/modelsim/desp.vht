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
-- Generated on "06/07/2021 15:36:09"
                                                            
-- Vhdl Test Bench template for design  :  desp
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY desp_vhd_tst IS
END desp_vhd_tst;
ARCHITECTURE desp_arch OF desp_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL comp_out : STD_LOGIC;
SIGNAL cont_en : STD_LOGIC;
SIGNAL dato : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL en : STD_LOGIC;
SIGNAL rst_cont : STD_LOGIC;
SIGNAL rst_reg : STD_LOGIC;
SIGNAL salida : STD_LOGIC;
COMPONENT desp
	PORT (
	clk : IN STD_LOGIC;
	comp_out : OUT STD_LOGIC;
	cont_en : IN STD_LOGIC;
	dato : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	en : IN STD_LOGIC;
	rst_cont : IN STD_LOGIC;
	rst_reg : IN STD_LOGIC;
	salida : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : desp
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	comp_out => comp_out,
	cont_en => cont_en,
	dato => dato,
	en => en,
	rst_cont => rst_cont,
	rst_reg => rst_reg,
	salida => salida
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
	rst_cont <= '1';
	rst_reg <= '1';
	dato <= "00000000";
	en <= '0';
	cont_en <= '0';
	wait for 1ns;
	rst_cont <= '0';
	rst_reg <= '0';
	dato <= "00000000";
	en <= '0';
	cont_en <= '0';
	wait for 4ns;
	rst_cont <= '0';
	rst_reg <= '0';
	dato <= "10100101";
	en <= '1';
	cont_en <= '0';
	wait for 5ns;
	rst_cont <= '0';
	rst_reg <= '0';
	dato <= "10100101";
	en <= '0';
	cont_en <= '0';
	wait for 5ns;
	rst_cont <= '0';
	rst_reg <= '0';
	dato <= "10100101";
	en <= '0';
	cont_en <= '1';
	wait for 55ns;
	rst_cont <= '1';
	rst_reg <= '0';
	dato <= "10100101";
	en <= '0';
	cont_en <= '0';
	wait for 5ns;
	rst_cont <= '0';
	rst_reg <= '0';
	dato <= "10100101";
	en <= '0';
	cont_en <= '0';
	wait for 5ns;
	
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
END desp_arch;
