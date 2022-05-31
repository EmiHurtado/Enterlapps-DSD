library ieee;
use ieee.std_logic_1164.all;

entity ConvertidorUnitarioVector8 is
	port(
		a, b, c, d, e, f, g, h : in std_logic;
		salidaVector : out std_logic_vector(0 to 7)
	);
end ConvertidorUnitarioVector8; 

architecture ConvUniVect8 of ConvertidorUnitarioVector8 is
begin	
	salidaVector(0) <= a;
	salidaVector(1) <= b;
	salidaVector(2) <= c;
	salidaVector(3) <= d;
	salidaVector(4) <= e;
	salidaVector(5) <= f;
	salidaVector(6) <= g;
	salidaVector(7) <= h;

end ConvUniVect8;