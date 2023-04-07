library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ejercicio2b is port
	(y    : out signed (7 downto 0);
	 a, b : in  signed (7 downto 0);
	 ctrl : in  bit);
end entity ejercicio2b;

architecture ejercicio2b of ejercicio2b is
begin
	
	y <= a+(not b)+1 when ctrl='0' else
	     a+b;

end architecture ejercicio2b;