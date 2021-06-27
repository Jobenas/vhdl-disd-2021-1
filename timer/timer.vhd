library ieee;
use ieee.std_logic_1164.all;

use work.timer_comps.all;

entity timer is
	port(
		clk, rst: in std_logic;
		dec: out std_logic_vector(3 downto 0);
		segs: out std_logic_vector(5 downto 0)
	);
end timer;

architecture modular of timer is

signal dec_en, seg_en: std_logic;

begin

div1: div_freq port map(clk => clk, rst=>rst, div_out=>dec_en);
cont_dec: cont generic map(m=>4, n=>10) port map(clk=>clk, rst=>rst, en=>dec_en, cuenta=>dec, div=>seg_en);
cont_seg: cont generic map(m=>6, n=>60) port map(clk=>clk, rst=>rst, en=>seg_en, cuenta=>segs);

end modular;