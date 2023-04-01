-- Banco de pruebas para ejercicio 1b y 1d
-- F = abc+cd
-- G = abc'

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bp_ejercicio1e is
end entity bp_ejercicio1e;

architecture bp_ejercicio1e of bp_ejercicio1e is

	signal F_b, G_b, F_d, G_d : std_logic; -- Salidas UUT de cada circuito
	signal a, b, c, d         : std_logic; -- Entradas UUT para ambos circuitos

	-- Circuito disenado mediante funciones logicas
	component ejercicio1b is port
		( out_F, out_G     : out std_logic;
		  in_a, in_b, in_c : in  std_logic);
	end component ejercicio1b;
	
	-- Circuito disenado mediante puertas logicas
	component ejercicio1d is port
		( out_F, out_G : out std_logic;
		  in_a, in_b, in_c : in  std_logic);
	end component ejercicio1d;

begin

	-- Instancias UUT circuito de funciones logicas
	uut_b : component ejercicio1b port map
		( out_F => F_b,
		  out_G => G_b,
		  in_a  => a, 
		  in_b  => b, 
		  in_c  => c );

	-- Instancias UUT circuito de puertas logicas
	uut_d : component ejercicio1d port map
		( out_F => F_b,
		  out_G => G_b,
		  in_a  => a, 
		  in_b  => b, 
		  in_c  => c );
	
	-- Generacion del vector de test
	gen_vec_test: process 
		variable test_in : unsigned (3 downto 0); -- Vector de test
	begin
		test_in := B"0000";
		for count in 0 to 15 loop
			a <= test_in(3);
			b <= test_in(2);
			c <= test_in(1);
			d <= test_in(0);
			wait for 10 ns;
			test_in := test_in +1;
		end loop;
		wait; -- Finalizar
	end process gen_vec_test;

end architecture bp_ejercicio1e;
	



