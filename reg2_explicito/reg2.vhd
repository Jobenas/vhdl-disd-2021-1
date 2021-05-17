library ieee;
use ieee.std_logic_1164.all;

entity reg2 is
	port(
		rst, clk: in std_logic;
		d: in std_logic_vector(1 downto 0);
		q: out std_logic_vector(1 downto 0)
	);
end reg2;

architecture ejemplo of reg2 is

begin
	
	process(clk, rst)
	begin
		if rst = '1' then
			q(1) <= '0';
			q(0) <= '0';
		elsif rising_edge(clk) then
			q(1) <= d(1);
			q(0) <= d(0);
		end if;
	end process;
	
end ejemplo;