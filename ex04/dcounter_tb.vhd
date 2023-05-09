Library IEEE;

USE ieee.std_logic_1164.all;
--USE work.std_arith.all;

entity dcounter_tb is
end dcounter_tb;

architecture arch_dcounter_tb of dcounter_tb is
	component dcounter
		Port(
			clk_in: in std_logic;
			C: out natural
		);
	end component;

	signal clk_in: std_logic;
	signal C: natural;

	begin
		test_dcounter: dcounter port map(clk_in => clk_in, C => C);
		process is 
		
		variable i : integer := 0;
		begin
		while i < 45 loop
			clk_in <= '0';
			wait for 10 ns;

			clk_in <= '1';
			wait for 1 ns;
			i := i + 1;
		end loop;
		wait;
		end process;
end arch_dcounter_tb;