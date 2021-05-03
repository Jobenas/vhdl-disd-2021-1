library ieee;
use ieee.std_logic_1164.all;

entity ha is
	port(
		a, b: in std_logic;
		s, cout: out std_logic
	);
end ha;


architecture logical of ha is

begin

	s <= a xor b;
	cout <= a and b;

end logical;