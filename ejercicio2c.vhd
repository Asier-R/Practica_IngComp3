library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ejercicio2c is port
	(y    : out signed (7 downto 0);
	 a, b : in  signed (7 downto 0);
	 ctrl : in  bit);
end entity ejercicio2c;

architecture ejercicio2c of ejercicio2c is
begin
	
	y <= (a+(not b)+1) when ctrl='0' else
	     a+b;

end architecture ejercicio2c;