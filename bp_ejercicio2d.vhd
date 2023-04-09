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
		( y    : out signed (7 downto 0);
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
			("00000000","00000000","00000000"), -- Conjunto 1
			("00000000","00000000","00000001"), -- Conjunto 2
			("00000011","00000001","00000000"), -- Conjunto 3
			("00000011","00000001","00000001"), -- Conjunto 4
			("10001000","00010010","00000000"), -- Conjunto 5
			("10001000","00010010","00000001"), -- Conjunto 6
			("11111111","00000001","00000000"), -- Conjunto 7
			("11111111","00000001","00000001")  -- Conjunto 8
		);

		-- Varibales auxiliares test
		variable error_cnt_b  : integer := 0;
		variable error_cnt_c  : integer := 0;

	begin

		for i in 0 to 7 loop

			report "... CONJUNTO " & integer'image(i+1) & " ...";
			report "Input: a=" & integer'image((-1)*to_integer(vectores(i,0))) & " b=" & integer'image((-1)*to_integer(vectores(i,1))) & " ctrl=" & bit'image(to_bit(vectores(i,2)(0)));
			
			if ( to_bit(vectores(i,2)(0)) = '0' ) then 
				report "Resultado esperado resta = " & integer'image( ( (-1)*to_integer(vectores(i,0) - vectores(i,1)) ) );
			else
				report "Resultado esperado suma  = " & integer'image( ( (-1)*to_integer(vectores(i,0) + vectores(i,1)) ) );
			end if;

			-- Asignar valores a senales de entrada
			in_a    <= vectores(i,0);
			in_b    <= vectores(i,1);
			in_ctrl <= to_bit(vectores(i,2)(0));

			wait for 5 ns;
			
			-- Validacion y recuento de errores circuito 2.b
			case in_ctrl is
				when '0' => 
					if ( y_b = (in_a-in_b) ) then 
						report "Test finalizado OK => Resultado resta circuito 2.b = " & integer'image((-1)*to_integer(y_b));
        				else 
						report "Test finalizado KO => Resultado resta circuito 2.b = " & integer'image((-1)*to_integer(y_b));
						error_cnt_b  := error_cnt_b + 1;
        				end if;
					if ( y_c = (in_a-in_b) ) then 
						report "Test finalizado OK => Resultado resta circuito 2.c = " & integer'image((-1)*to_integer(y_c));
        				else 
						report "Test finalizado KO => Resultado resta circuito 2.c = " & integer'image((-1)*to_integer(y_c));
						error_cnt_c  := error_cnt_c + 1;
        				end if;
				when others => 
					if ( y_b = (in_a+in_b) ) then 
						report "Test finalizado OK => Resultado suma circuito 2.b = " & integer'image((-1)*to_integer(y_b));
        				else 
						report "Test finalizado KO => Resultado suma circuito 2.b = " & integer'image((-1)*to_integer(y_b));
						error_cnt_b  := error_cnt_b + 1;
        				end if;
					if ( y_c = (in_a-in_b) ) then 
						report "Test finalizado OK => Resultado resta circuito 2.b = " & integer'image((-1)*to_integer(y_c));
        				else 
						report "Test finalizado KO => Resultado resta circuito 2.b = " & integer'image((-1)*to_integer(y_c));
						error_cnt_c  := error_cnt_c + 1;
        				end if;
			end case;
        		
			report "............................................";

			wait for 10 ns; -- Tiempo arbitrario de espera entre iteraciones
			
		end loop;

		report "Numero de errores circuito 2.b: " & integer'image(error_cnt_b); 
		report "Numero de errores circuito 2.c: " & integer'image(error_cnt_c); 

		wait; -- Fin de test
		
	end process gen_vec_test;

end architecture bp_ejercicio2d;
	



