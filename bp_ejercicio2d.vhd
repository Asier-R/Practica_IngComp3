-- Banco de pruebas para ejercicio 2b y 2c

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bp_ejercicio2d is
end entity bp_ejercicio2d;

architecture bp_ejercicio2d of bp_ejercicio2d is

	-- Circuito disenado mediante funciones logicas
	component ejercicio2b is port
		( y    : out signed (7 downto 0);
		  a, b : in  signed (7 downto 0);
		  ctrl : in  bit );
	end component ejercicio2b;
	
	-- Circuito disenado mediante puertas logicas
	component ejercicio2c is port
		( y   : out signed (7 downto 0);
		 a, b : in  signed (7 downto 0);
		 ctrl : in  bit );
	end component ejercicio2c;

	signal y_b, y_c   : signed (7 downto 0); -- Salidas UUT de cada circuito
	signal in_a, in_b : signed (7 downto 0); -- Entradas UUT para ambos circuitos
	signal in_ctrl    : bit; 

begin

	-- UUT circuito con operador resta
	uut_b : component ejercicio2b port map
		( y    => y_b,
		  ctrl => in_ctrl,
		  a    => in_a, 
		  b    => in_b );

	-- UUT circuito sin operador resta
	uut_c : component ejercicio2c port map
		( y    => y_c,
		  ctrl => in_ctrl,
		  a    => in_a, 
		  b    => in_b );
	
	-- Vectores de test
	gen_vec_test: process 

		type matrizTest is array (0 to 7, 0 to 2) of signed (7 downto 0);
		variable vectores : matrizTest := (
			("00000000","00000000","00000000"), --pruebas
			("00000000","00000000","00000001"),
			("00000011","00000001","00000000"),
			("00000011","00000001","00000001"),
			("10001000","00010010","00000000"),
			("10001000","00010010","00000001"),
			("11111111","00000001","00000000"),
			("11111111","00000001","00000001")
		);

		-- Varibales auxiliares test
		variable t_a    : signed (7 downto 0);
		variable t_b    : signed (7 downto 0);
		variable t_ctrl : signed (7 downto 0);

	begin

		for i in 0 to 7 loop

			report "operando a=" & integer'image(to_integer(vectores(i,0)));

			in_a    <= vectores(i,0);
			in_b    <= vectores(i,1);
			in_ctrl <= to_bit(vectores(i,2)(0));
			
		end loop;

		wait; -- Fin de test
		
	end process gen_vec_test;

end architecture bp_ejercicio2d;
	



