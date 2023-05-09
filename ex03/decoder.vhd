Library IEEE;

USE ieee.std_logic_1164.all;
--USE work.std_arith.all;

entity decoder is
	Port(
		A,B: in std_logic;
		OUT0, OUT1, OUT2, OUT3: out std_logic
	);

end decoder;

architecture arch_decoder of decoder is
	begin
		OUT0 <= not A and not B;
		OUT1 <= not A and B;
		OUT2 <= A and not B;
		OUT3 <= A and B;
	end arch_decoder;
	