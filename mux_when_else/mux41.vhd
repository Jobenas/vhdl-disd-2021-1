library ieee;
use ieee.std_logic_1164.all;

entity mux41 is
	port(
		a, b, c, d: in std_logic;
		s: in std_logic_vector(1 downto 0);
		f: out std_logic
	);
end mux41;

architecture ejemplo of mux41 is

begin
	
	f <= a when s = "00" else
		  b when s = "01" else
		  c when s = "10" else
		  d;
	
end ejemplo;