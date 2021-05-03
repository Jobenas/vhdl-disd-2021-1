library ieee;
use ieee.std_logic_1164.all;

entity test is
	port(
		a, b: in std_logic;
		f: out std_logic
	);
		
end test;

architecture example of test is

begin
	f <= a and b;
end example;