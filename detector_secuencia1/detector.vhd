library ieee;
use ieee.std_logic_1164.all;

entity detector is
	port(
		clk, rst, x: in std_logic;
		z: out std_logic
	);
end detector;

architecture fsm of detector is

type estados is(s0, s1, s2, s3);
signal estado_pte, estado_sgte: estados;

begin

	-- bloque secuencial => memoria
	process(clk, rst)
	begin
		if rst = '1' then
			estado_pte <= s0;
		elsif rising_edge(clk) then
			estado_pte <= estado_sgte;
		end if;
	end process;
	
	-- bloque combinacional => logica de estado siguiente y de salida
	process(estado_pte, x)
	begin
		case estado_pte is
			when s0 =>
				if x = '1' then
					estado_sgte <= s1;
				else
					estado_sgte <= s0;
				end if;
				z <= '0';
			when s1 =>
				if x = '1' then
					estado_sgte <= s2;
				else
					estado_sgte <= s0;
				end if;
				z <= '0';
			when s2 =>
				if x = '1' then
					estado_sgte <= s3;
				else
					estado_sgte <= s0;
				end if;
				z <= '0';
			when s3 =>
				if x = '1' then
					estado_sgte <= s3;
				else
					estado_sgte <= s0;
				end if;
				z <= '1';
			when others =>
				estado_sgte <= s0;
				z <= '-';
		end case;
	end process;
end fsm;