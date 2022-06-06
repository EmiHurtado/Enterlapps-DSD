LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

-- i Este bloque recibe varias señales de datos (que corresponden
-- i a las filas de la matriz de leds) y las divide y controla
-- i para que sean visibles en la matriz de leds de forma correcta

ENTITY GeneradorVideo IS
    PORT (
        d0, d1, d2, d3, d4, d5, d6, d7 : IN STD_LOGIC_VECTOR(0 TO 15);
        -- El reloj es de 1KHz para que no se noten los destellos de los leds
        CLK1KHz : IN STD_LOGIC;
        row : OUT STD_LOGIC_VECTOR(0 TO 7);
        column : OUT STD_LOGIC_VECTOR(0 TO 15)
    );
END ENTITY GeneradorVideo;

ARCHITECTURE GV OF GeneradorVideo IS
    SIGNAL numRow : INTEGER RANGE 0 TO 7 := 0;
BEGIN
    RecorrerMatriz : PROCESS (CLK1KHz)
    BEGIN

        -- Moviendo cursor de fila y enviando datos de columna
        IF rising_edge(CLK1KHz) THEN
            -- Cada ciclo de reloj, se envía la señal de la fila que se debe
            --  encender junto con la información de los leds que se deben
            --  apagar para formar la imagen deseada
            CASE numRow IS
                WHEN 0 =>
                    row <= "10000000";
                    column <= d0; -- Datos de la primera fila para apagar leds
                WHEN 1 =>
                    row <= "01000000";
                    column <= d1; -- Datos de la segunda fila para apagar leds
                WHEN 2 =>
                    row <= "00100000";
                    column <= d2;
                WHEN 3 =>
                    row <= "00010000";
                    column <= d3;
                WHEN 4 =>
                    row <= "00001000";
                    column <= d4;
                WHEN 5 =>
                    row <= "00000100";
                    column <= d5;
                WHEN 6 =>
                    row <= "00000010";
                    column <= d6;
                WHEN 7 =>
                    row <= "00000001";
                    column <= d7;
                WHEN OTHERS =>
                    row <= "11111111";
                    column <= d0;
            END CASE;

            -- Aumentando fila
            IF numRow = 7 THEN
                numRow <= 0;
            ELSE
                numRow <= numRow + 1;
            END IF;

        END IF;
    END PROCESS RecorrerMatriz;
END ARCHITECTURE GV;