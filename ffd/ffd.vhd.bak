library ieee;
use ieee.std_logic_1164.all;

entity ffd is
	port(
		clk, d: in std_logic;
		q: out std_logic
	);
end ffd;

architecture ejemplo of ffd is

begin
	
	process(clk)
	begin
		if rising_edge(clk) then
			q <= d;
		end if;	
	end process;
	
end ejemplo;