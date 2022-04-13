LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.math_real.ALL;

ENTITY Separadorunidades IS
    PORT (
        value : IN INTEGER RANGE 0 TO 999;
        unidad, decena, centena : INOUT INTEGER RANGE 0 TO 10
    );
END Separadorunidades;

ARCHITECTURE SepUnits OF Separadorunidades IS
    SIGNAL tempValue : INTEGER RANGE 0 TO 999 := 0;
BEGIN
    PROCESS (value)
    BEGIN
        tempValue <= value;
        centena <= INTEGER(floor(real(tempValue) / 100.0));
        tempValue <= tempValue - centena * 100;
        decena <= INTEGER(floor(real(tempValue) / 10.0));
        tempValue <= tempValue - decena * 10;
        unidad <= tempValue;
    END PROCESS;
END SepUnits;