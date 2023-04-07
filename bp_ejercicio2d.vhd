-- Banco de pruebas para ejercicio 2b y 2c

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bp_ejercicio1e is
end entity bp_ejercicio1e;

architecture bp_ejercicio1e of bp_ejercicio1e is

	-- Circuito disenado mediante funciones logicas
	component ejercicio2b is port
		( y          : out std_logic;
		  a, b, ctrl : in  std_logic);
	end component ejercicio2b;
	
	-- Circuito disenado mediante puertas logicas
	component ejercicio2c is port
		( y          : out std_logic;
		  a, b, ctrl : in  std_logic);
	end component ejercicio2c;

	signal F_b, G_b, F_d, G_d  : std_logic; -- Salidas UUT de cada circuito
	signal in_a, in_b, in_ctrl : std_logic; -- Entradas UUT para ambos circuitos

begin

	-- UUT circuito con operador resta
	uut_b : component ejercicio2b port map
		( y    => F_b,
		  ctrl => G_b,
		  a    => in_a, 
		  b    => in_b );

	-- UUT circuito sin operador resta
	uut_c : component ejercicio2c port map
		( y    => F_b,
		  ctrl => G_b,
		  a    => in_a, 
		  b    => in_b );
	
	-- Generacion del vector de test
	gen_vec_test: process 
		variable test_in : unsigned (3 downto 0); -- Vector de test
	begin
		test_in := B"0000";
		for count in 0 to 15 loop
			in_a <= test_in(3);
			in_b <= test_in(2);
			wait for 10 ns;
			test_in := test_in +1;
		end loop;
		wait; -- Finalizar
	end process gen_vec_test;

end architecture bp_ejercicio1e;
	


