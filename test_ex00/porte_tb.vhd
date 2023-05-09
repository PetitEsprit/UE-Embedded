Library IEEE;

USE ieee.std_logic_1164.all;
--USE work.std_arith.all;

entity porte_tb is
end porte_tb;

architecture test of porte_tb is
	component porte
		Port(
			A,B : in std_logic;
			S,R : out std_logic
		);
	end component;
	signal A,B,S,R : std_logic;

	begin
		nand_porte: porte port map(A => A, B=> B, S=>S, R=>R);
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

end test;
