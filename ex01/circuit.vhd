Library IEEE;

USE ieee.std_logic_1164.all;
--USE work.std_arith.all;

entity circuit is
	Port(
		A,B,C: in std_logic;
		M : out std_logic
	);

end circuit;

architecture arch_circuit of circuit is
begin

	M <= (not A and B and C) or (A and C and not B) or (A and B and not C) or (A and B and C);

end arch_circuit;
