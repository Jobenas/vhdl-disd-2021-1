library ieee;
use ieee.std_logic_1164.all;

entity cod is
	port(
		e: in std_logic_vector(3 downto 0);
		z: out std_logic;
		a: out std_logic_vector(1 downto 0)
	);
end cod;

architecture ejemplo1 of cod is

begin
	
	process(e)
	begin
		if e(3) = '1' then
			a <= "11";
		elsif e(2) = '1' then
			a <= "10";
		elsif e(1) = '1' then
			a <= "01";
		elsif e(0) = '1' then
			a <= "00";
		else
			a <= "00";
		end if;
	end process;
	
	z <= '1' when e = "0000" else
		  '0';
	
end ejemplo1;

architecture ejemplo2 of cod is

begin
	
	a <= e(1) & e(0);
	z <= '0';
	
end ejemplo2;