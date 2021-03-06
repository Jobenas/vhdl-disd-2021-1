library ieee;
use ieee.std_logic_1164.all;

entity multiplo3 is
	port(
		a, b, c, d: in std_logic;
		f:				out std_logic
	);
end multiplo3;

architecture ejemplo of multiplo3 is
signal temp: std_logic_vector(3 downto 0);
begin

	temp <= a & b & c & d;
	
	with temp select
		f <= '1' when "0000",
			  '0' when "0001",
			  '0' when "0010",
			  '1' when "0011",
			  '0' when "0100",
			  '0' when "0101",
			  '1' when "0110",
			  '0' when "0111",
			  '0' when "1000",
			  '1' when "1001",
			  '0' when "1010",
			  '0' when "1011",
			  '1' when "1100",
			  '0' when "1101",
			  '0' when "1110",
			  '1' when "1111",
			  '-' when others;

end ejemplo;