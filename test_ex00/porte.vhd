Library IEEE;

USE ieee.std_logic_1164.all;
--USE work.std_arith.all;

entity PORTE is 
    Port(
        A,B : in std_logic;
        S,R : out std_logic
    );

end PORTE;

architecture ARCH_PORTE of porte is 
begin

    S <= A nand B;

end ARCH_PORTE;
