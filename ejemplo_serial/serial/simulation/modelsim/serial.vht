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
-- Generated on "06/07/2021 16:21:31"
                                                            
-- Vhdl Test Bench template for design  :  serial
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY serial_vhd_tst IS
END serial_vhd_tst;
ARCHITECTURE serial_arch OF serial_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ack : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL dato : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reg_en : STD_LOGIC;
SIGNAL req : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL serie : STD_LOGIC;
COMPONENT serial
	PORT (
	ack : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	dato : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	reg_en : IN STD_LOGIC;
	req : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	serie : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : serial
	PORT MAP (
-- list connections between master ports and signals
	ack => ack,
	clk => clk,
	dato => dato,
	reg_en => reg_en,
	req => req,
	rst => rst,
	serie => serie
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
	rst <= '1';
	reg_en <= '0';
	req <= '0';
	dato <= "00000000";
	wait for 1ns;
	rst <= '0';
	reg_en <= '0';
	req <= '0';
	dato <= "00000000";
	wait for 4ns;
	rst <= '0';
	reg_en <= '0';
	req <= '0';
	dato <= "00000000";
	wait for 5ns;
	rst <= '0';
	reg_en <= '1';
	req <= '0';
	dato <= "10100101";
	wait for 5ns;
	rst <= '0';
	reg_en <= '0';
	req <= '0';
	dato <= "10100101";
	wait for 5ns;
	rst <= '0';
	reg_en <= '0';
	req <= '0';
	dato <= "00000000";
	wait for 5ns;
	rst <= '0';
	reg_en <= '0';
	req <= '1';
	dato <= "00000000";
	wait for 5ns;
	rst <= '0';
	reg_en <= '0';
	req <= '0';
	dato <= "00000000";
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
END serial_arch;
