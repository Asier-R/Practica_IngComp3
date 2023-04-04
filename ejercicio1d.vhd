-- Arquitectura del circuito logico implementando las puertas de las funciones:
-- F = abc+cd
-- G = abc'

library IEEE;
use IEEE.std_logic_1164.all;

entity ejercicio1d is port
	(F, G       : out std_logic;
	 a, b, c, d : in  std_logic);
end entity ejercicio1d;

architecture ejercicio1d of ejercicio1d is
 
	component AND_2 is
		port(   out_0      : out std_logic;
                	in_0, in_1 : in  std_logic);
    	end component AND_2;

	component OR_2 is
		port(   out_0      : out std_logic;
                	in_0, in_1 : in  std_logic);
    	end component OR_2;

	component NOT_1 is
		port(   out_0 : out std_logic;
                	in_0  : in  std_logic);
    	end component NOT_1;
	
	-- Senales fucion logica F
	signal s_and_bc   : std_logic;
	signal s_and_abc  : std_logic;
	signal s_and_cd   : std_logic;

	-- Senales fucion logica G
	signal s_and_ab : std_logic;
	signal s_not_c  : std_logic;

begin
	-- Puertas funcion logica F
	and_BC    : AND_2 port map ( out_0 => s_and_bc,  in_0 => b,         in_1 => c );
	and_ABC   : AND_2 port map ( out_0 => s_and_abc, in_0 => a,         in_1 => s_and_bc );
	and_CD    : AND_2 port map ( out_0 => s_and_cd,  in_0 => c,         in_1 => d );
	or_ABC_CD : OR_2  port map ( out_0 => F,         in_0 => s_and_abc, in_1 => s_and_cd );

	-- Puertas funcion logica G
	and_AB     : AND_2 port map ( out_0 => s_and_ab, in_0 => a,        in_1 => b );
	not_c      : NOT_1 port map ( out_0 => s_not_c,  in_0 => c );
	and_ABnotC : AND_2 port map ( out_0 => G,        in_0 => s_and_ab, in_1 => s_not_c );
end architecture ejercicio1d;