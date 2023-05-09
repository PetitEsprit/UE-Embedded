Library IEEE;

USE ieee.std_logic_1164.all;
--USE work.std_arith.all;

entity multiplexer is
	Port(
		X: in std_logic_vector(0 to 7);
		Y: out std_logic
	);

end multiplexer;

architecture arch_multiplexer of multiplexer is
	begin
		Y <= (X(0) and X(1))
		xor (X(2) and X(3))
		xor (X(4) and X(5))
		xor (X(6) and X(7));
end arch_multiplexer;