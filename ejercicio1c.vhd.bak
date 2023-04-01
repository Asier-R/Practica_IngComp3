-- Puertas logicas para las funciones:
-- F = abc+cd
-- G = abc'


-- Puerta AND de dos entradas
library IEEE;
use IEEE.std_logic_1164.all;

entity AND_2 is port
	(x    : out std_logic;
	 a, b : in  std_logic);
end entity AND_2;

architecture AND_2 of AND_2 is
begin
	x <= (a and b);
end architecture AND_2;


-- Puerta OR de dos entradas
library IEEE;
use IEEE.std_logic_1164.all;

entity OR_2 is port
	(x    : out std_logic;
	 a, b : in  std_logic);
end entity OR_2;

architecture OR_2 of OR_2 is
begin
	x <= (a or b);
end architecture OR_2;


-- Puerta NOR
library IEEE;
use IEEE.std_logic_1164.all;

entity NOT_1 is port
	(x : out std_logic;
	 a : in  std_logic);
end entity NOT_1;

architecture NOT_1 of NOR_1 is
begin
	x <= (not a);
end architecture NOT_1;