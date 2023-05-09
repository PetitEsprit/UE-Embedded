Library IEEE;

USE ieee.std_logic_1164.all;
--USE work.std_arith.all;

entity comp_tb is
end comp_tb;

architecture arch_comp_tb of comp_tb is
	component comp
		Port(
			A,B: in std_logic;
			ASUPB, AINFB, AEQB : out std_logic
		);
	end component;
	signal A,B : std_logic;

	begin
		test_comp: comp port map(A => A, B=> B);
		process begin
			A <= 'X';
			B <= 'X';
			wait for 1 ns;

			A <= '0';
			B <= '0';
			wait for 1 ns;
		
			A <= '0';
			B <= '1';
			wait for 1 ns;

			A <= '1';
			B <= '0';
			wait for 1 ns;

			A <= '1';
			B <= '1';
			wait for 1 ns;
			--assert false report 'Reached end of test';
			wait;
		end process;

end arch_comp_tb;