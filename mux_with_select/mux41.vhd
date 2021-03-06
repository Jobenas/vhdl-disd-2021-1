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
	
	with s select
		f <= a when "00",
			  b when "01",
			  c when "10",
			  d when others;
	
end ejemplo;