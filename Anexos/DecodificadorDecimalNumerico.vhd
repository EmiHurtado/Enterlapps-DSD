LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY DecodifiadorDecimalNumerico IS
	PORT (
		value : IN INTEGER RANGE 0 TO 9;
		a, b, c, d, e, f, g : OUT STD_LOGIC;
		carry : OUT INTEGER RANGE 0 TO 9
	);
END DecodifiadorDecimalNumerico;

ARCHITECTURE DecoDecNum OF DecodifiadorDecimalNumerico IS
	SIGNAL salidaVector : STD_LOGIC_VECTOR(0 TO 6);
BEGIN
	carry <=
		0 WHEN (value < 10) ELSE
		1 WHEN (value < 20) ELSE
		2 WHEN (value < 30) ELSE
		3 WHEN (value < 40) ELSE
		4 WHEN (value < 50) ELSE
		5 WHEN (value < 60) ELSE
		6 WHEN (value < 70) ELSE
		7 WHEN (value < 80) ELSE
		8 WHEN (value < 90) ELSE
		9 WHEN (value < 100);
	salidaVector <=
		"1111110" WHEN (value mod 10 = 0) ELSE
		"0110000" WHEN (value mod 10 = 1) ELSE
		"1101101" WHEN (value mod 10 = 2) ELSE
		"1111001" WHEN (value mod 10 = 3) ELSE
		"0110011" WHEN (value mod 10 = 4) ELSE
		"1011011" WHEN (value mod 10 = 5) ELSE
		"1011111" WHEN (value mod 10 = 6) ELSE
		"1110000" WHEN (value mod 10 = 7) ELSE
		"1111111" WHEN (value mod 10 = 8) ELSE
		"1111011" WHEN (value mod 10 = 9);
	a <= salidaVector(0);
	b <= salidaVector(1);
	c <= salidaVector(2);
	d <= salidaVector(3);
	e <= salidaVector(4);
	f <= salidaVector(5);
	g <= salidaVector(6);
END DecoDecNum;