LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
use IEEE.numeric_std.all;

ENTITY Contador IS
	PORT (
		CLK, RST : IN STD_LOGIC;
		salida : OUT STD_LOGIC_VECTOR(7 DOWNTO)
	);

END Contador;
ARCHITECTURE ContadorArch OF Contador IS
	SIGNAL count : STD_LOGIC_VECTOR (7 DOWNTO 0) := "00000000";
BEGIN
	PROCESS (CLK, RST)
	BEGIN
		IF rising_edge(CLK) THEN
			count <= count + 1;
		ELSIF RST = '1' THEN
			count <= "00000000";
		END IF;
	END PROCESS;
	salida <= count;
END ContadorArch;