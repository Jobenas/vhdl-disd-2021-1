library ieee;
use ieee.std_logic_1164.all;

library work;
use work.fa_comps.all;


entity fa is
	port(
		a, b, ci	: in std_logic;
		co, s		: out std_logic
	);
end fa;

architecture rtl of fa is
signal a_xor_b, a_and_b, ci_and_a_xor_b: std_logic;
begin
	ha1: ha port map(a=>a, b=>b, s=>a_xor_b, cout=>a_and_b);
	ha2: ha port map(a=>a_xor_b, b=>ci, s=>s, cout=>ci_and_a_xor_b);
	
	co <= a_and_b or ci_and_a_xor_b;
end rtl;