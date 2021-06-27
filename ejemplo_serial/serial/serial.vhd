library ieee;
use ieee.std_logic_1164.all;

use work.serial_comps.all;

entity serial is
	port(
		clk, rst, req, reg_en: in std_logic;
		dato: in std_logic_vector(7 downto 0);
		serie, ack: out std_logic
	);
end serial;

architecture jerarquico of serial is

signal comp_out, rst_cont, cont_en: std_logic;

begin


circuito: desp port map(clk => clk, en=>reg_en, cont_en=>cont_en, rst_reg=>rst, rst_cont=>rst_cont, dato=>dato, salida=>serie, comp_out=>comp_out);
fsm: desp_control port map(clk=>clk, rst=>rst, req=>req, comp_out=>comp_out,cont_en=>cont_en, rst_cont=>rst_cont, ack=>ack);

end jerarquico;

