LIBRARY ieee;

USE ieee.std_logic_1164.ALL;

ENTITY Prueba IS
    PORT (
        entrada : IN STD_LOGIC;
        salida : OUT STD_LOGIC
    );
END ENTITY Prueba;

ARCHITECTURE APrueba OF Prueba IS
BEGIN
    salida <= entrada;
END ARCHITECTURE APrueba;