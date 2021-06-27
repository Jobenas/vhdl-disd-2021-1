library ieee;
use ieee.std_logic_1164.all;

use work.desp_comps.all;

entity desp is
	port(
		clk, en, cont_en, rst_reg, rst_cont: in std_logic;
		dato: in std_logic_vector(7 downto 0);
		salida, comp_out: out std_logic
	);
end desp;

architecture ejemplo of desp is

signal sum_out, cont_mux_out, cont_out: std_logic_vector(3 downto 0);
signal reg_en_out, reg_out: std_logic_vector(7 downto 0);
signal comp_out_int: std_logic;

begin

	-- mux para habilitador de registro
	reg_en_out <= dato when en = '1' else
					  reg_out;
	
	-- registro de escritura de dato
	process(clk, rst_reg)
	begin
		if rst_reg = '1' then
			reg_out <= (others => '0');
		elsif rising_edge(clk) then
			reg_out <= reg_en_out;
		end if;
	end process;
	
	-- mux de salida
	with cont_out select
		salida <= '1' when "0000",
					 '0' when "0001",
					 reg_out(7) when "0010",
					 reg_out(6) when "0011",
					 reg_out(5) when "0100",
					 reg_out(4) when "0101",
					 reg_out(3) when "0110",
					 reg_out(2) when "0111",
					 reg_out(1) when "1000",
					 reg_out(0) when "1001",
					 '1' when "1010",
					 '-' when others;
	
	-- comparador
	comp_out_int <= '1' when  cont_out = "1010" else
						    '0';
	
	--sumador para el contador
	sum: fan generic map(n=>4) port map(a=>cont_out, b=>"0000", ci=>cont_en, s=>sum_out);
	
	-- mux de entrada al registro del contador
	cont_mux_out <= sum_out when comp_out_int = '0' else
						 (others=>'0');
	
	-- registro de contador
	process(clk, rst_cont)
	begin
		if rst_cont = '1' then
			cont_out <= (others=>'0');
		elsif rising_edge(Clk) then
			cont_out <= cont_mux_out;
		end if;
	end process;
	
	comp_out <= comp_out_int;
	
end ejemplo;