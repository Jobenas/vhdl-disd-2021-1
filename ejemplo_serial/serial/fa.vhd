library ieee;
use ieee.std_logic_1164.all;

entity fa is
	port(
		a, b, ci	: in std_logic;
		co, s		: out std_logic
	);
end fa;

architecture conc of fa is
signal temp_in: std_logic_vector(2 downto 0);
signal temp_out: std_logic_vector(1 downto 0);
begin

	temp_in <= ci & a & b;
	
	with temp_in select
		temp_out <= "00" when "000",
						"01" when "001",
						"01" when "010",
						"10" when "011",
						"01" when "100",
						"10" when "101",
						"10" when "110",
						"11" when "111",
						"--" when others;
	co <= temp_out(1);
	s <= temp_out(0);

end conc;