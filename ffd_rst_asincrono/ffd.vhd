library ieee;
use ieee.std_logic_1164.all;

entity ffd is
	port(
		clk, rst, d: in std_logic;
		q: out std_logic
	);
end ffd;

architecture ejemplo of ffd is

begin

	process(rst, clk)
	begin
		if rst = '1' then
			q <= '0';
		elsif rising_edge(clk) then
			q <= d;
		end if;
	end process;

end ejemplo;