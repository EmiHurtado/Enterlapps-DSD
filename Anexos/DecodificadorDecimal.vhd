library ieee;
use ieee.std_logic_1164.all;

entity DecodifiadorDecimal is
	port(
		valueVector : in std_logic_vector(0 TO 7);
		dot : in std_logic;
		a, b, c, d, e, f, g, h : out std_logic;
		salidaVector : inout std_logic_vector(0 to 6)
	);
end DecodifiadorDecimal; 

architecture DecoDec of DecodifiadorDecimal is
begin
	salidaVector <=
		"1111110" when valueVector = "00000000" else
		"0110000" when valueVector = "00000001" else
		"1101101" when valueVector = "00000010" else
		"1111001" when valueVector = "00000011" else
		"0110011" when valueVector = "00000100" else
		"1011011" when valueVector = "00000101" else
		"1011111" when valueVector = "00000110" else
		"1110000" when valueVector = "00000111" else
		"1111111" when valueVector = "00001000" else
		"1111011" when valueVector = "00001001" else
        "0000001";
	a <= salidaVector(0);
	b <= salidaVector(1);
	c <= salidaVector(2);
	d <= salidaVector(3);
	e <= salidaVector(4);
	f <= salidaVector(5);
	g <= salidaVector(6);
	h <= dot;
end DecoDec;