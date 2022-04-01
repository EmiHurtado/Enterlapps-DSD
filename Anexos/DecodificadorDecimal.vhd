library ieee;
use ieee.std_logic_1164.all;

entity DecodifiadorDecimal is
	port(
		valueVector : in std_logic_vector(4 downto 0);
		a, b, c, d, e, f, g : out std_logic;
		salidaVector : out std_logic_vector(6 downto 0)
	);
end DecodifiadorDecimal; 

architecture DecoDec of DecodifiadorDecimal is
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
        "0000001" when others;
	a <= salidaVector(0);
	b <= salidaVector(1);
	c <= salidaVector(2);
	d <= salidaVector(3);
	e <= salidaVector(4);
	f <= salidaVector(5);
	g <= salidaVector(6);
end DecoBin;