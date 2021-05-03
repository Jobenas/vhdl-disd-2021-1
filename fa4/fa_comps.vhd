library ieee;
use ieee.std_logic_1164.all;

package fa_comps is
	component ha is
		port(
			a, b: in std_logic;
			s, cout: out std_logic
		);
	end component;

end package;