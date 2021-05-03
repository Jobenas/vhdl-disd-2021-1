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
-- Generated on "04/26/2021 15:18:36"
                                                            
-- Vhdl Test Bench template for design  :  fa4
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fa4_vhd_tst IS
END fa4_vhd_tst;
ARCHITECTURE fa4_arch OF fa4_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL cin : STD_LOGIC;
SIGNAL cout : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT fa4
	PORT (
	a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	cin : IN STD_LOGIC;
	cout : OUT STD_LOGIC;
	s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : fa4
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	cin => cin,
	cout => cout,
	s => s
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once          
	a <= "0000";
	b <= "0000";
	cin <= '0';
	wait for 10ns;
	a <= "1111";
	b <= "1111";
	cin <= '0';
	wait for 10ns;
	a <= "1000";
	b <= "0110";
	cin <= '0';
	wait for 10ns;
	a <= "1110";
	b <= "1100";
	cin <= '0';
	wait for 10ns;
	a <= "1011";
	b <= "0011";
	cin <= '0';
	wait for 10ns;
	a <= "1001";
	b <= "1101";
	cin <= '0';
	wait for 10ns;
	a <= "1010";
	b <= "0110";
	cin <= '0';
	wait for 10ns;
	a <= "1001";
	b <= "0111";
	cin <= '0';
	wait for 10ns;
	a <= "0000";
	b <= "0000";
	cin <= '1';
	wait for 10ns;
	a <= "1111";
	b <= "1111";
	cin <= '1';
	wait for 10ns;
	a <= "1000";
	b <= "0110";
	cin <= '1';
	wait for 10ns;
	a <= "1110";
	b <= "1100";
	cin <= '1';
	wait for 10ns;
	a <= "1011";
	b <= "0011";
	cin <= '1';
	wait for 10ns;
	a <= "1001";
	b <= "1101";
	cin <= '1';
	wait for 10ns;
	a <= "1010";
	b <= "0110";
	cin <= '1';
	wait for 10ns;
	a <= "1001";
	b <= "0111";
	cin <= '1';
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
END fa4_arch;
