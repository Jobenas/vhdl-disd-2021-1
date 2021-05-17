library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity div_freq is
	port(
		clk, rst: in std_logic;
		div_out: out std_logic
	);
end div_freq;

architecture ejemplo of div_freq is

signal cuenta_actual, cuenta_siguiente, sum_out: unsigned(3 downto 0);
signal comp_out: std_logic;

begin

	sum_out <= cuenta_actual + 1;
	
	comp_out <= '1' when cuenta_actual = 9 else
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
	
	div_out <= comp_out;

end ejemplo;