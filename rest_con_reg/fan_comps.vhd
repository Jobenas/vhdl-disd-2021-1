library ieee;
use ieee.std_logic_1164.all;

package fan_comps is
	component fa is
		port(
			a, b, ci	: in std_logic;
			co, s		: out std_logic
		);
	end component;
end package;