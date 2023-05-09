Library IEEE;

USE ieee.std_logic_1164.all;
--USE work.std_arith.all;

entity comp is
	Port(
		A,B: in std_logic;
		ASUPB, AINFB, AEQB : out std_logic
	);
end comp;

architecture arch_comp of comp is
begin
	AEQB <= '1' when A = B else '0';
	ASUPB <= '1' when A > B else '0';
	AINFB <= '1' when A < B else '0';
end arch_comp;
