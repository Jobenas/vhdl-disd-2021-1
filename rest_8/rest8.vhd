library ieee;
use ieee.std_logic_1164.all;

use work.rest8_comps.all;

entity rest8 is
	port(
		a, b: in std_logic_vector(7 downto 0);
		r: out std_logic_vector(7 downto 0)
	);
end rest8;

architecture ejemplo of rest8 is
signal not_b: std_logic_vector(7 downto 0);
begin
	not_b <= not(b);
	
	restador: fan generic map(n=>8) port map(a=>a, b=>not_b, ci=>'1', s=>r);

end ejemplo;