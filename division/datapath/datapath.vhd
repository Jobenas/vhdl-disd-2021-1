library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath is
	port(
		clk, rst: in std_logic;
		a_in, b_in: in std_logic_vector(7 downto 0);
		a_load, b_load, c_load, r_load, a_sel, c_sel: in std_logic;
		c, r: out std_logic_vector(7 downto 0);
		altb: out std_logic
	);
end datapath;

architecture estructural of datapath is

signal a_reg, b_reg, c_reg, r_reg: unsigned(7 downto 0);
signal a_mux, c_mux, rest_out, sum_out: unsigned(7 downto 0);

begin
	
	-- restador
	rest_out <= a_reg - b_reg;
	
	-- mux de a
	a_mux <= rest_out when a_sel = '1' else
				unsigned(a_in);
	
	-- sumador
	sum_out <= c_reg + 1;
	
	-- mux de c
	c_mux <= sum_out when c_sel = '1' else
				(others => '0');
	
	-- registro a
	process(clk, rst)
	begin
		if rst = '1' then
			a_reg <= (others => '0');
		elsif rising_edge(clk) then
			if a_load = '1' then
				a_reg <= a_mux;
			end if;
		end if;			
	end process;
	
	-- registro b
	process(clk, rst)
	begin
		if rst = '1' then
			b_reg <= (others => '0');
		elsif rising_edge(clk) then
			if b_load = '1' then
				b_reg <= unsigned(b_in);
			end if;	
		end if;
	end process;
	
	-- registro c
	process(clk, rst)
	begin
		if rst = '1' then
			c_reg <= (others => '0');
		elsif rising_edge(clk) then
			if c_load = '1' then
				c_reg <= c_mux;
			end if;
		end if;			
	end process;
	
	-- registro r
	process(clk, rst)
	begin
		if rst = '1' then
			r_reg <= (others => '0');
		elsif rising_edge(clk) then			
			if r_load = '1' then
				r_reg <= a_reg;
			end if;
		end if;			
	end process;
	
	-- comparador
	altb <= '1' when a_reg < b_reg else
			  '0';
	
	c <= std_logic_vector(c_reg);
	r <= std_logic_vector(r_reg);

end estructural;