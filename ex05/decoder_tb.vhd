Library IEEE;

USE ieee.std_logic_1164.all;
--USE work.std_arith.all;

entity decoder_tb is
end decoder_tb;

architecture arch_decoder_tb of decoder_tb is
	component decoder
		Port(
			C: in std_logic_vector(2 downto 0);
			S: out std_logic_vector(0 to 7)
		);
	end component;
	signal C: std_logic_vector(2 downto 0);
	signal S: std_logic_vector(0 to 7);
	begin
		test_decoder: decoder port map(C => C, S => S);
		process begin
			C(2) <= 'X';
			C(1) <= 'X';
			C(0) <= 'X';
			wait for 1 ns;

			C(2) <= '0';
			C(1) <= '0';
			C(0) <= '0';
			wait for 1 ns;
		
			C(2) <= '0';
			C(1) <= '0';
			C(0) <= '1';
			wait for 1 ns;

			C(2) <= '0';
			C(1) <= '1';
			C(0) <= '0';
			wait for 1 ns;

			C(2) <= '0';
			C(1) <= '1';
			C(0) <= '1';
			wait for 1 ns;

			C(2) <= '1';
			C(1) <= '0';
			C(0) <= '0';
			wait for 1 ns;

			C(2) <= '1';
			C(1) <= '0';
			C(0) <= '1';
			wait for 1 ns;

			C(2) <= '1';
			C(1) <= '1';
			C(0) <= '0';
			wait for 1 ns;

			C(2) <= '1';
			C(1) <= '1';
			C(0) <= '1';
			wait for 1 ns;
			--assert false report 'Reached end of test';
			wait;
		end process;

end arch_decoder_tb;