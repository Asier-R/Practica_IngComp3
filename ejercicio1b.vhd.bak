-- Funciones logicas
-- F = abc+cd
-- G = abc'
library IEEE;
use IEEE.std_logic_1164.all;

entity ejercicio1b is port
	(F, G       : out std_logic;
	 a, b, c, d : in  std_logic);
end entity ejercicio1b;

architecture ejercicio1b of ejercicio1b is
begin
	F <= (a and b and c) or (c and d);
	G <= (a and b) and (not c);
end architecture ejercicio1b;