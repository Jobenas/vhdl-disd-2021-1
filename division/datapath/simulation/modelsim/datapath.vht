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
-- Generated on "06/21/2021 15:31:29"
                                                            
-- Vhdl Test Bench template for design  :  datapath
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY datapath_vhd_tst IS
END datapath_vhd_tst;
ARCHITECTURE datapath_arch OF datapath_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL a_load : STD_LOGIC;
SIGNAL a_sel : STD_LOGIC;
SIGNAL altb : STD_LOGIC;
SIGNAL b_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL b_load : STD_LOGIC;
SIGNAL c : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL c_load : STD_LOGIC;
SIGNAL c_sel : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL r : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL r_load : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT datapath
	PORT (
	a_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	a_load : IN STD_LOGIC;
	a_sel : IN STD_LOGIC;
	altb : OUT STD_LOGIC;
	b_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	b_load : IN STD_LOGIC;
	c : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	c_load : IN STD_LOGIC;
	c_sel : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	r : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	r_load : IN STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : datapath
	PORT MAP (
-- list connections between master ports and signals
	a_in => a_in,
	a_load => a_load,
	a_sel => a_sel,
	altb => altb,
	b_in => b_in,
	b_load => b_load,
	c => c,
	c_load => c_load,
	c_sel => c_sel,
	clk => clk,
	r => r,
	r_load => r_load,
	rst => rst
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
	-- ciclo de reset
	rst <= '1';
	a_in <= "00000000";
	b_in <= "00000000";
	a_load <= '0';
	b_load <= '0';
	c_load <= '0';
	r_load <= '0';
	a_sel <= '0';
	c_sel <= '0';
	wait for 1ns;
	rst <= '0';
	a_in <= "00000000";
	b_in <= "00000000";
	a_load <= '0';
	b_load <= '0';
	c_load <= '0';
	r_load <= '0';
	a_sel <= '0';
	c_sel <= '0';
	wait for 4ns;
	-- estado inicia_vars
	rst <= '0';
	a_in <= "00001100";
	b_in <= "00000110";
	a_load <= '1';
	b_load <= '1';
	c_load <= '1';
	r_load <= '0';
	a_sel <= '0';
	c_sel <= '0';
	wait for 5ns;
	-- evalua primera iteracion (iteracion 0)
	rst <= '0';
	a_in <= "00001100";
	b_in <= "00000110";
	a_load <= '0';
	b_load <= '0';
	c_load <= '0';
	r_load <= '0';
	a_sel <= '0';
	c_sel <= '0';
	wait for 5ns;
	-- opera primera iteracion (iteracion 0)
	rst <= '0';
	a_in <= "00001100";
	b_in <= "00000110";
	a_load <= '1';
	b_load <= '0';
	c_load <= '1';
	r_load <= '0';
	a_sel <= '1';
	c_sel <= '1';
	wait for 5ns;
	-- evalua segunda iteracion (iteracion 1)
	rst <= '0';
	a_in <= "00000000";
	b_in <= "00000000";
	a_load <= '0';
	b_load <= '0';
	c_load <= '0';
	r_load <= '0';
	a_sel <= '0';
	c_sel <= '0';
	wait for 5ns;
	-- opera segunda iteracion (iteracion 1)
	rst <= '0';
	a_in <= "00000000";
	b_in <= "00000000";
	a_load <= '1';
	b_load <= '0';
	c_load <= '1';
	r_load <= '0';
	a_sel <= '1';
	c_sel <= '1';
	wait for 5ns;
	-- evalua tercera iteracion (iteracion 2)
	rst <= '0';
	a_in <= "00000000";
	b_in <= "00000000";
	a_load <= '0';
	b_load <= '0';
	c_load <= '0';
	r_load <= '0';
	a_sel <= '0';
	c_sel <= '0';
	wait for 5ns;
	-- almacena_r
	rst <= '0';
	a_in <= "00000000";
	b_in <= "00000000";
	a_load <= '0';
	b_load <= '0';
	c_load <= '0';
	r_load <= '1';
	a_sel <= '0';
	c_sel <= '0';
	wait for 5ns;
	-- muestra
	rst <= '0';
	a_in <= "00000000";
	b_in <= "00000000";
	a_load <= '0';
	b_load <= '0';
	c_load <= '0';
	r_load <= '0';
	a_sel <= '0';
	c_sel <= '0';
	wait for 5ns;
	
		  
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN
	clk <= '0';
	wait for 2.5ns;
	clk <= '1';
	wait for 2.5ns;
END PROCESS always;                                          
END datapath_arch;
