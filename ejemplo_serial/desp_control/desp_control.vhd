library ieee;
use ieee.std_logic_1164.all;

entity desp_control is
	port(
		clk, rst, req, comp_out: in std_logic;
		cont_en, rst_cont, ack: out std_logic
	);
end desp_control;

architecture fsm of desp_control is

type estados is(inicio, espera_req, transmite, envia_ack);
signal estado_pte, estado_sgte: estados;

begin

	-- proceso de memoria
	process(clk, rst)
	begin
		if rst = '1' then
			estado_pte <= inicio;
		elsif rising_edge(clk) then
			estado_pte <= estado_sgte;
		end if;
	end process;
	
	-- proceso de logica combinacional de salida y de estado siguiente
	process(estado_pte, req, comp_out)
	begin
		case estado_pte is
			when inicio =>
				cont_en <= '0';
				rst_cont <= '1';
				ack <= '0';
				estado_sgte <= espera_req;
			when espera_req =>
				cont_en <= '0';
				rst_cont <= '0';
				ack <= '0';
				if req = '1' then
					estado_sgte <= transmite;
				else
					estado_sgte <= espera_req;
				end if;
			when transmite =>
				cont_en <= '1';
				rst_cont <= '0';
				ack <= '0';
				if comp_out = '1' then
					estado_sgte <= envia_ack;
				else
					estado_sgte <= transmite;
				end if;
			when envia_ack =>
				cont_en <= '0';
				rst_cont <= '0';
				ack <= '1';
				estado_sgte <= inicio;
			when others =>
				cont_en <= '-';
				rst_cont <= '-';
				ack <= '-';
				estado_sgte <= inicio;
		end case;
	end process;

end fsm;