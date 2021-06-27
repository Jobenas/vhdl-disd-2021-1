library ieee;
use ieee.std_logic_1164.all;

package desp_comps is
	component fan is
		generic(
			n: integer := 4
		);
		port(
			a, b: in std_logic_vector(n - 1 downto 0);
			ci: in std_logic;
			co: out std_logic;
			s: out std_logic_vector(n - 1 downto 0)
		);
	end component;
end package;