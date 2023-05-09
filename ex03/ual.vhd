Library IEEE;

USE ieee.std_logic_1164.all;
--USE work.std_arith.all;

entity ual is
	Port(
		INVA, A, ENA, B, ENB, CIN, F0, F1: in std_logic;
		COUT, X: out std_logic
	);

end ual;

architecture arch_ual of ual is
	component logic_unit
		Port(
			INVA, A, ENA, B, ENB: in std_logic;
			OUT0, OUT1, OUT2, OUTA, OUTB: out std_logic
		);
	end component;

	component decoder
		Port(
			A,B: in std_logic;
			OUT0, OUT1, OUT2, OUT3: out std_logic
		);
	end component;

	component adder
		Port(
			IN0, IN1, IN2, CIN: in std_logic;
			OUT0, COUT: out std_logic
		);
	end component;

	component multiplexer
		Port(
			X: in std_logic_vector(0 to 7);
			Y: out std_logic
		);
	end component;
	signal luout: std_logic_vector(0 to 4);
	signal decodout: std_logic_vector(0 to 3);
	signal addout: std_logic;
begin
	lu: logic_unit port map(INVA => INVA, A => A, ENA => ENA, B => B, ENB => ENB,
							OUT0 => luout(0), OUT1 => luout(1), OUT2 => luout(2),
							OUTA => luout(3), OUTB => luout(4));
	dec: decoder port map(A => F0, B => F1,
							OUT0 => decodout(0), OUT1 => decodout(1), OUT2 => decodout(2), OUT3 => decodout(3));
	add: adder port map(IN0 => luout(3), IN1 => luout(4), IN2 => decodout(3), CIN => CIN, OUT0 => addout, COUT => COUT);
	mult: multiplexer port map(X(0) => luout(0), X(1) => decodout(0), X(2) => luout(1), X(3) => decodout(1),
								X(4) => luout(2), X(5) => decodout(2), X(6) => addout, X(7) => decodout(3), Y => X);
end arch_ual;