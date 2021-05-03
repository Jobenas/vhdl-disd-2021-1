library ieee;
use ieee.std_logic_1164.all;

entity mult_multiplos is
	port(
		a, b, c, d: in std_logic;
		f, g, h: out std_logic
	);
end mult_multiplos;

architecture ejemplo of mult_multiplos is
begin
	f <= (not(a xor b) and not(c xor d)) or (not(a) and b and c and not(d)) or (a and not(b) and not(c) and d);
	g <= not(d);
	h <= not(d) and ((not(c) and not(a xor b)) or (not(a) and b and c));
end ejemplo;