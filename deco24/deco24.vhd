library ieee;
use ieee.std_logic_1164.all;

entity deco24 is
	port(
		a: in std_logic_vector(1 downto 0);
		b: out std_logic_Vector(3 downto 0)
	);
end deco24;

architecture ejemplo of deco24 is

begin

	b <= "1000" when a = "11" else
		  "0100" when a = "10" else
		  "0010" when a = "01" else
		  "0001" when a = "00" else
		  "----";

end ejemplo;