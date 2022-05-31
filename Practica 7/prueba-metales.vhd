LIBRARY ieee;

USE ieee.std_logic_1164.ALL;

ENTITY PruebaMetales IS
    PORT (
        entrada : IN STD_LOGIC;
        salida : OUT STD_LOGIC
    );
END ENTITY PruebaMetales;

ARCHITECTURE APruebaMetales OF PruebaMetales IS
BEGIN
    salida <= NOT entrada;
END ARCHITECTURE APruebaMetales;