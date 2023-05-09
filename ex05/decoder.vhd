Library IEEE;

USE ieee.std_logic_1164.all;
--USE work.std_arith.all;

entity decoder is
	Port(
		C: in std_logic_vector(2 downto 0);
		S: out std_logic_vector(0 to 7)
	);

end decoder;

architecture arch_decoder of decoder is
begin

	S(0) <= (not C(2) and not C(1) and not C(0));
	S(1) <= (not C(2) and not C(1) and C(0));
	S(2) <= (not C(2) and C(1) and C(0));
	S(3) <= (not C(2) and  C(1) and C(0));
	S(4) <= (C(2) and not C(1) and not C(0));
	S(5) <= (C(2) and not C(1) and C(0));
	S(6) <= (C(2) and C(1) and not C(0));
	S(7) <= (C(2) and C(1) and C(0));

end arch_decoder;
