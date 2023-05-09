Library IEEE;

USE ieee.std_logic_1164.all;
--USE work.std_arith.all;

entity circuit_tb is
end circuit_tb;

architecture arch_circuit_tb of circuit_tb is
	component circuit
		Port(
			A,B,C: in std_logic;
			M : out std_logic
		);
	end component;
	signal A,B,C,M : std_logic;

	begin
		test_circuit: circuit port map(A => A, B=> B, C=>C, M=>M);
		process begin
			A <= 'X';
			B <= 'X';
			C <= 'X';
			wait for 1 ns;

			A <= '0';
			B <= '0';
			C <= '0';
			wait for 1 ns;
		
			A <= '0';
			B <= '0';
			C <= '1';
			wait for 1 ns;

			A <= '0';
			B <= '1';
			C <= '0';
			wait for 1 ns;

			A <= '0';
			B <= '1';
			C <= '1';
			wait for 1 ns;

			A <= '1';
			B <= '0';
			C <= '0';
			wait for 1 ns;

			A <= '1';
			B <= '0';
			C <= '1';
			wait for 1 ns;

			A <= '1';
			B <= '1';
			C <= '0';
			wait for 1 ns;

			A <= '1';
			B <= '1';
			C <= '1';
			wait for 1 ns;
			--assert false report 'Reached end of test';
			wait;
		end process;

end arch_circuit_tb;