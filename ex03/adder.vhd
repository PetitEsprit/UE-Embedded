Library IEEE;

USE ieee.std_logic_1164.all;
--USE work.std_arith.all;

entity adder is
	Port(
		IN0, IN1, IN2, CIN: in std_logic;
		OUT0, COUT: out std_logic
	);

end adder;

architecture arch_adder of adder is
	begin
		OUT0 <= CIN xor (IN0 xor IN1);
		COUT <= (IN0 and IN1 and IN2) or (CIN and IN2 and (IN0 xor IN1));
	end arch_adder;
	