library ieee;
use ieee.std_logic_1164.all;

package timer_comps is
	component div_freq is
		port(
			clk, rst: in std_logic;
			div_out: out std_logic
		);
	end component;
	
	component cont is
		generic(m: integer := 4;
				  n: integer := 10);
		port(
			clk, rst: in std_logic;
			en: in std_logic;
			cuenta: out std_logic_vector(m-1 downto 0);
			div: out std_logic
		);
	end component;
end package;