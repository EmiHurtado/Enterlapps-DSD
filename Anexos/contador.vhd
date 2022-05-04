LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY Contador IS
	PORT (
		CLK, RST : IN STD_LOGIC;
		salida : INOUT INTEGER RANGE 0 TO 15
	);

END Contador;
ARCHITECTURE ContadorArch OF Contador IS
BEGIN
	PROCESS (CLK)
	BEGIN
		IF rising_edge(CLK) THEN
			IF RST = '1' THEN
				salida <= 0;
			ELSE
				salida <= salida + 1;
			END IF;
		END IF;
	END PROCESS;
END ContadorArch;