library ieee;
use ieee.std_logic_1164.all;

use work.fa4_comps.all;

entity fa4 is
	port(
		a, b: in std_logic_vector(3 downto 0);
		cin: in std_logic;
		cout: out std_logic;
		s: out std_logic_vector(3 downto 0)
	);
end fa4;

architecture jerarquico of fa4 is
signal c_int: std_logic_vector(2 downto 0);
begin

fa0: fa port map(a=>a(0), b=>b(0), ci=>cin, s=>s(0), co=>c_int(0));
fa1: fa port map(a=>a(1), b=>b(1), ci=>c_int(0), s=>s(1), co=>c_int(1));
fa2: fa port map(a=>a(2), b=>b(2), ci=>c_int(1), s=>s(2), co=>c_int(2));
fa3: fa port map(a=>a(3), b=>b(3), ci=>c_int(2), s=>s(3), co=>cout);

end jerarquico;