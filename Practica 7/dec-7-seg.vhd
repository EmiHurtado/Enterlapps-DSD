LIBRARY ieee;

USE ieee.std_logic_1164.ALL;

ENTITY Dec7Seg IS
    PORT (
        valorActual : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        salida: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
END ENTITY Dec7Seg;

ARCHITECTURE ADec7Seg OF Dec7Seg IS
BEGIN
    salida <=   "1001111" when valorActual = "0001" else -- 1
                "0010010" when valorActual = "0010" else -- 2
                "0000110" when valorActual = "0011" else -- 3
                "1001100" when valorActual = "0100" else -- 4
                "0100100" when valorActual = "0101" else -- 5
                "0100000" when valorActual = "0110" else -- 6
                "0001111" when valorActual = "0111" else -- 7
                "0000000" when valorActual = "1000" else -- 8
                "0000100" when valorActual = "1001" else -- 9
                "0000001"; -- 0
END ARCHITECTURE ADec7Seg;