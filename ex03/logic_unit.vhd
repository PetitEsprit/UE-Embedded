Library IEEE;

USE ieee.std_logic_1164.all;
--USE work.std_arith.all;

entity logic_unit is
	Port(
		INVA, A, ENA, B, ENB: in std_logic;
		OUT0, OUT1, OUT2, OUTA, OUTB: out std_logic
	);

end logic_unit;

architecture arch_logic_unit of logic_unit is
signal naXora: std_logic;
signal nbAndb: std_logic;

begin
	naXora <= INVA xor (A and ENA);
	nbAndb <= B and ENB;
	OUT0 <= naXora and nbAndb;
	OUT1 <= naXora or nbAndb;
	OUT2 <= not nbAndb;
	OUTA <= naXora;
	OUTB <= nbAndb;
end arch_logic_unit;