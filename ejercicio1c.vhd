-- Puertas logicas para las funciones:
-- F = abc+cd
-- G = abc'

-- Puerta AND de dos entradas
library IEEE;
use IEEE.std_logic_1164.all;

entity AND_2 is port
	(out_0      : out std_logic;
	 in_0, in_1 : in  std_logic);
end entity AND_2;

architecture AND_2 of AND_2 is
begin
	out_0 <= (in_0 and in_1);
end architecture AND_2;

-- Puerta OR de dos entradas
library IEEE;
use IEEE.std_logic_1164.all;

entity OR_2 is port
	(out_0      : out std_logic;
	 in_0, in_1 : in  std_logic);
end entity OR_2;

architecture OR_2 of OR_2 is
begin
	out_0 <= (in_0 or in_1);
end architecture OR_2;

-- Puerta NOT
library IEEE;
use IEEE.std_logic_1164.all;

entity NOT_1 is port
	(out_0 : out std_logic;
	 in_0  : in  std_logic);
end entity NOT_1;

architecture NOT_1 of NOT_1 is
begin
	out_0 <= (not in_0);
end architecture NOT_1;