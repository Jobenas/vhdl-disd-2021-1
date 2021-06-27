library ieee;
use ieee.std_logic_1164.all;

use work.fan_comps.all;

entity fan is
	generic(
		n: integer := 4
	);
	port(
		a, b: in std_logic_vector(n - 1 downto 0);
		ci: in std_logic;
		co: out std_logic;
		s: out std_logic_vector(n - 1 downto 0)
	);
end fan;

architecture param of fan is
signal cint: std_logic_vector(n downto 0);
begin
	
	cint(0) <= ci;
	
	for_gen: 
	for i in 0 to n - 1  generate
		fa_n: fa port map(a=>a(i), b=>b(i), ci=>cint(i), s=>s(i), co=>cint(i+1));
	end generate;

	co <= cint(n);
	
end param;