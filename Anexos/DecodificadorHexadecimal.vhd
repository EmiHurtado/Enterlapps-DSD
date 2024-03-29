library ieee;
use ieee.std_logic_1164.all;

entity DecodifiadorHexadecimal is
	port(
		valueVector : in std_logic_vector(0 to 4);
		dot : in std_logic;
		a, b, c, d, e, f, g, h : out std_logic;
		salidaVector : out std_logic_vector(0 to 6)
	);
end DecodifiadorHexadecimal; 

architecture DecoHex of DecodifiadorHexadecimal is
begin
	salidaVector <=
		"1111110" when valueVector = "0000" else
		"0110000" when valueVector = "0001" else
		"1101101" when valueVector = "0010" else
		"1111001" when valueVector = "0011" else
		"0110011" when valueVector = "0100" else
		"1011011" when valueVector = "0101" else
		"1011111" when valueVector = "0110" else
		"1110000" when valueVector = "0111" else
		"1111111" when valueVector = "1000" else
		"1111011" when valueVector = "1001" else
		"1110111" when valueVector = "1010" else
		"0011111" when valueVector = "1011" else
		"1001110" when valueVector = "1100" else
		"0111101" when valueVector = "1101" else
		"1001111" when valueVector = "1110" else
		"1000111" when valueVector = "1111";
	a <= salidaVector(0);
	b <= salidaVector(1);
	c <= salidaVector(2);
	d <= salidaVector(3);
	e <= salidaVector(4);
	f <= salidaVector(5);
	g <= salidaVector(6);
	h <= dot;
end DecoBin;