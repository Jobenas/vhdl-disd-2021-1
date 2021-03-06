library ieee;
use ieee.std_logic_1164.all;

entity vending is
	port(
		clk, rst, n, d, q: in std_logic;
		c, n_o, d_o: out std_logic
	);
end vending;

architecture fsm of vending is

type estados is(cero, cinco, diez, quince, veinte, veinticinco, treinta, treintaycinco, cuarenta, cuarentaycinco);
signal estado_pte, estado_sgte: estados;

begin

	-- bloque secuencial => memoria
	process(clk, rst)
	begin
		if rst = '1' then	
			estado_pte <= cero;
		elsif rising_edge(clk) then
			estado_pte <= estado_sgte;
		end if;
	end process;
	
	-- bloque combinacional => logica combinacional de salida y de estado siguiente
	process(estado_pte, n, d, q)
	begin
		case estado_pte is
			when cero =>
				c <= '0';
				n_o <= '0';
				d_o <= '0';
				if n = '1' then
					estado_sgte <= cinco;
				elsif d = '1' then
					estado_sgte <= diez;
				elsif q = '1' then
					estado_sgte <= veinticinco;
				else
					estado_sgte <= cero;
				end if;
			when cinco =>
				c <= '0';
				n_o <= '0';
				d_o <= '0';
				if n = '1' then
					estado_sgte <= diez;
				elsif d = '1' then
					estado_sgte <= quince;
				elsif q = '1' then
					estado_sgte <= treinta;
				else
					estado_sgte <= cinco;
				end if;
			when diez =>
				c <= '0';
				n_o <= '0';
				d_o <= '0';
				if n = '1' then
					estado_sgte <= quince;
				elsif d = '1' then
					estado_sgte <= veinte;
				elsif q = '1' then
					estado_sgte <= treintaycinco;
				else
					estado_sgte <= diez;
				end if;
			when quince =>
				c <= '0';
				n_o <= '0';
				d_o <= '0';
				if n = '1' then
					estado_sgte <= veinte;
				elsif d = '1' then
					estado_sgte <= veinticinco;
				elsif q = '1' then
					estado_sgte <= cuarenta;
				else
					estado_sgte <= quince;
				end if;
			when veinte =>
				c <= '0';
				n_o <= '0';
				d_o <= '0';
				if n = '1' then
					estado_sgte <= veinticinco;
				elsif d = '1' then
					estado_sgte <= treintaycinco;
				elsif q = '1' then
					estado_sgte <= cuarentaycinco;
				else
					estado_sgte <= veinte;
				end if;
			when veinticinco =>
				c <= '1';
				n_o <= '0';
				d_o <= '0';
				estado_sgte <= cero;
			when treinta =>
				c <= '1';
				n_o <= '1';
				d_o <= '0';
				estado_sgte <= cero;
			when treintaycinco =>
				c <= '1';
				n_o <= '0';
				d_o <= '1';
				estado_sgte <= cero;
			when cuarenta =>
				c <= '1';
				n_o <= '1';
				d_o <= '1';
				estado_sgte <= cero;
			when cuarentaycinco =>
				c <= '0';
				n_o <= '1';
				d_o <= '0';
				estado_sgte <= cuarenta;
			when others =>
				c <= '-';
				n_o <= '-';
				d_o <= '0';
				estado_sgte <= cero;
		end case;

	end process;

end fsm;