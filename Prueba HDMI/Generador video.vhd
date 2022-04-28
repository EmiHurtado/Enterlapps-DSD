LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY GeneradorVideo IS
    PORT (
        -- El reloj de 1Hz es para cambiar de color y hacer pruebas, eliminarlo luego y reemplazar por alguna matriz de datos
        CLK25MHz, CLK1Hz : IN STD_LOGIC;
        d2Red, d1Green, d0Blue : OUT STD_LOGIC_VECTOR(0 TO 9)
    );
END ENTITY GeneradorVideo;

ARCHITECTURE GV OF GeneradorVideo IS
    SIGNAL contador : INTEGER RANGE 0 TO 2 := 0;
BEGIN

    getColor : PROCESS (CLK1Hz, contador)
    BEGIN
        IF rising_edge(CLK1Hz) THEN
            IF (contador = 0) THEN
            BEGIN
                d2Red <= "0000000000";
                d1Green <= "0000000000";
                d0Blue <= "1111111100";
                contador <= 1;
            ELSIF (contador = 1) THEN
            BEGIN
                d2Red <= "0000000000";
                d1Green <= "1111111100";
                d0Blue <= "0000000000";
                contador <= 2;
            ELSIF (contador = 3) THEN
            BEGIN
                d2Red <= "1111111100";
                d1Green <= "0000000000";
                d0Blue <= "0000000000";
                contador <= 0;
            END IF;
        END IF;
    END PROCESS getColor;
    -- Aquí tengo que añadir el multiplicador de reloj a 250 MHz
END ARCHITECTURE GV;