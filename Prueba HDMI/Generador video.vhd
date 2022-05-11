LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY GeneradorVideo IS
    PORT (
        -- El reloj de 1Hz es para cambiar de color y hacer pruebas, eliminarlo luego y reemplazar por alguna matriz de datos
        CLK250MHz, BTN : IN STD_LOGIC;
        redData2, greenData1, blueData0 : OUT STD_LOGIC
    );
END ENTITY GeneradorVideo;

ARCHITECTURE GV OF GeneradorVideo IS
    SIGNAL contadorColor : INTEGER RANGE 0 TO 2 := 0;
    SIGNAL contadorBit : INTEGER RANGE 0 TO 9 := 0;
    SIGNAL d2Red, d1Green, d0Blue : STD_LOGIC_VECTOR(0 TO 9);
BEGIN
    getColor : PROCESS (CLK250MHz, BTN, contadorColor, contadorBit)
    BEGIN
        -- Selector de color para la pantalla
        IF rising_edge(BTN) THEN
            IF (contadorColor = 0) THEN
                d2Red <= "0000000000";
                d1Green <= "0000000000";
                d0Blue <= "1111111111";
                contadorColor <= 1;
            ELSIF (contadorColor = 1) THEN
                d2Red <= "0000000000";
                d1Green <= "1111111111";
                d0Blue <= "0000000000";
                contadorColor <= 2;
            ELSIF (contadorColor = 3) THEN
                d2Red <= "1111111111";
                d1Green <= "0000000000";
                d0Blue <= "0000000000";
                contadorColor <= 0;
            END IF;
        END IF;

        -- Reloj para mandar los bits
        IF rising_edge(CLK250MHz) THEN
            redData2 <= d2Red(contadorBit);
            greenData1 <= d1Green(contadorBit);
            blueData0 <= d0Blue(contadorBit);

            IF (contadorBit < 9) THEN
                contadorBit <= contadorBit + 1;
            ELSIF (contadorBit = 9) THEN
                contadorBit <= 0;
            END IF;
        END IF;

    END PROCESS getColor;
END ARCHITECTURE GV;