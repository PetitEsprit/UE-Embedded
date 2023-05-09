Library IEEE;

USE ieee.std_logic_1164.all;
--USE work.std_arith.all;

entity ual_tb is
end ual_tb;

architecture arch_ual_tb of ual_tb is
	component ual
		Port(
			INVA, A, ENA, B, ENB, CIN, F0, F1: in std_logic;
			COUT, X: out std_logic
		);
	end component;
	signal INVA, A, ENA, B, ENB, CIN, F0, F1, COUT, X : std_logic;

	begin
		test_ual: ual port map(INVA => INVA, A => A, ENA => ENA, B => B, ENB => ENB, CIN => CIN, F0 => F0, F1 => F1,
								COUT => COUT, X => X);
		process begin
			INVA <= 'X';
			A <= 'X';
			ENA <= 'X';
			B <= 'X';
			ENB <= 'X';
			CIN <= 'X';
			F0 <= 'X';
			F1 <= 'X';
			wait for 1 ns;

			INVA <= '0';
			A <= '0';
			ENA <= '0';
			B <= '0';
			ENB <= '0';
			CIN <= '0';
			F0 <= '0';
			F1 <= '0';
			wait for 1 ns;

			INVA <= '1';
			A <= '1';
			ENA <= '1';
			B <= '1';
			ENB <= '1';
			CIN <= '1';
			F0 <= '1';
			F1 <= '1';
			wait for 1 ns;
			wait;
		end process;

end arch_ual_tb;