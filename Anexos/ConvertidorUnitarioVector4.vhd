library ieee;
use ieee.std_logic_1164.all;

entity ConvertidorUnitarioVector4 is
	port(
		a, b, c, d : in std_logic;
		salidaVector : out std_logic_vector(3 downto 0)
	);
end ConvertidorUnitarioVector4; 

architecture ConvUniVect4 of ConvertidorUnitarioVector4 is
begin
	a => salidaVector(0);
	b => salidaVector(1);
	c => salidaVector(2);
	d => salidaVector(3);
end ConvUniVect4;