library ieee;
use ieee.std_logic_1164.all;

entity multiplo3 is
	port(
		a, b, c, d: in std_logic;
		f: out std_logic
	);
end multiplo3;

architecture ejemplo of multiplo3 is
begin
	f <= (not(a xor b) and not(c xor d)) or (not(a) and b and c and not(d)) or (a and not(b) and not(c) and d);
end ejemplo;