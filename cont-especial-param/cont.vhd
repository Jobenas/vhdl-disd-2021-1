library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont is
	generic(m: integer := 4;
			  n: integer := 10);
	port(
		clk, rst: in std_logic;
		en: in std_logic;
		cuenta: out std_logic_vector(m-1 downto 0);
		div: out std_logic
	);
end cont;

architecture ejemplo of cont is

signal cuenta_actual, cuenta_siguiente, sum_out: unsigned(m-1 downto 0);
signal comp_out: std_logic;

begin
		
	sum_out <= cuenta_actual + 1 when en = '1' else
				  cuenta_actual;
	
	comp_out <= '1' when cuenta_actual = n-1 else
				   '0';
	
	cuenta_siguiente <= sum_out when comp_out = '0' else
							  (others => '0');	
	
	process(clk, rst)
	begin
		if rst = '1' then
			cuenta_actual <= (others => '0');
		elsif rising_edge(clk) then
			cuenta_actual <= cuenta_siguiente;
		end if;
	end process;
	
	cuenta <= std_logic_vector(cuenta_actual);
	div <= comp_out;

end ejemplo;