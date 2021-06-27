library ieee;
use ieee.std_logic_1164.all;

package serial_comps is
	component desp is
		port(
			clk, en, cont_en, rst_reg, rst_cont: in std_logic;
			dato: in std_logic_vector(7 downto 0);
			salida, comp_out: out std_logic
		);
	end component;
	
	component desp_control is
		port(
			clk, rst, req, comp_out: in std_logic;
			cont_en, rst_cont, ack: out std_logic
		);
	end component;
end package;