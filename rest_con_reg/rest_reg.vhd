library ieee;
use ieee.std_logic_1164.all;

use work.rest_reg_comps.all;

entity rest_reg is
	port(
		clk, rst, w: in std_logic;
		a, b: in std_logic_vector(7 downto 0);
		r: out std_logic_vector(7 downto 0)
	);
end rest_reg;

architecture modular of rest_reg is
signal not_b, reg_out, mux_out, sum_out: std_logic_vector(7 downto 0);
begin

	-- negacion de b
	not_b <= not(b);

	-- sumador configurado como restador
	restador: fan generic map(n=>8) port map(a=>a, b=>not_b, ci=>'1', s=>sum_out);
	
	-- multiplexor de habilitacion
	mux_out <= sum_out when w = '1' else
				  reg_out;
	
	-- registro de 8 bits
	process(clk, rst)
	begin
		if rst = '1' then
			reg_out <= (others => '0');
		elsif rising_edge(clk) then
			reg_out <= mux_out;
		end if;
	end process;
	
	-- conectamos la salida
	r <= reg_out;

end modular;