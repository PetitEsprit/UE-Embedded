Library IEEE;

USE ieee.std_logic_1164.all;

entity dcounter is
	Port(
		clk_in: in std_logic;
		C: out natural
	);

end dcounter;

architecture arch_dcounter of dcounter is
signal count: integer := 20;
	begin
		process(clk_in)
		begin
			if rising_edge(clk_in) then
				if (count = 0) then
					count <= 20;
				else
					count <= count - 1;
				end if;
			end if;
		end process;
	C <= count;
end arch_dcounter;
