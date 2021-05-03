library ieee;
use ieee.std_logic_1164.all;

entity primo is
	port(
		num: in std_logic_vector(4 downto 0);
		p: out std_logic
	);
end primo;

architecture func of primo is

begin

	process(num)
	begin
		case num is
			when "00000" => p <= '0';
			when "00001" => p <= '0';
			when "00010" => p <= '1';
			when "00011" => p <= '1';
			when "00100" => p <= '0';
			when "00101" => p <= '1';
			when "00110" => p <= '0';
			when "00111" => p <= '1';
			when "01000" => p <= '0';
			when "01001" => p <= '0';
			when "01010" => p <= '0';
			when "01011" => p <= '1';
			when "01100" => p <= '0';
			when "01101" => p <= '1';
			when "01110" => p <= '0';
			when "01111" => p <= '0';
			when "10000" => p <= '0';
			when "10001" => p <= '1';
			when "10010" => p <= '0';
			when "10011" => p <= '1';
			when "10100" => p <= '0';
			when "10101" => p <= '0';
			when "10110" => p <= '0';
			when "10111" => p <= '1';
			when "11000" => p <= '0';
			when "11001" => p <= '0';
			when "11010" => p <= '0';
			when "11011" => p <= '0';
			when "11100" => p <= '0';
			when "11101" => p <= '1';
			when "11110" => p <= '0';
			when "11111" => p <= '1';
			when others => p <= '-';
		end case;
	end process;

end func;