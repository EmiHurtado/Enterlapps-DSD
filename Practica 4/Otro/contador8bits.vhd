LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY Practica4 IS

	PORT (
		clk50Mhz, RST : IN STD_LOGIC;
		leds : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END Practica4;

ARCHITECTURE cuentabinario OF Practica4 IS

	SIGNAL numeros : STD_LOGIC_VECTOR (7 DOWNTO 0) := "00000000"; --se inicializa el vector en ceros.

	SIGNAL reloj_divisor : STD_LOGIC;
	COMPONENT Reloj IS --  el archivo divisor de frecuencia debe estar en la misma carpeta! 
		-- aqui se va a incluir el programa divisor de frecuencia que ya se implementó para trabajar 
		-- con una frecuencía mas baja en este caso 2Hz!!

		PORT (
			salida : OUT STD_LOGIC; -- se copia directamente de los puertos de entrada y salida, del programa reloj!
			clk : IN STD_LOGIC;
			reset : IN STD_LOGIC);

	END COMPONENT;

BEGIN

	Reloj1 : Reloj PORT MAP(reloj_divisor, Clk50Mhz, '1'); --  aqui se relaciona las entradas y salidas de los dos programas!

	proceso_contador : PROCESS (reloj_divisor, RST)

	BEGIN

		IF (RST = '0')
			THEN
			numeros <= "00000000";
		ELSIF rising_edge(reloj_divisor)
			THEN

			numeros <= numeros + 1;

		END IF;

	END PROCESS;

	leds <= numeros; -- checar si son de ánodo común o de cátado común!

END cuentabinario;