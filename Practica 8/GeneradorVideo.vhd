LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY GeneradorVideo IS
    PORT (
        d0, d1, d2, d3, d4, d5, d6, d7 : IN STD_LOGIC_VECTOR(0 TO 15);
        CLK1KHz : IN STD_LOGIC;
        row : OUT STD_LOGIC_VECTOR(0 TO 7);
        column : OUT STD_LOGIC_VECTOR(0 TO 15)
    );
END ENTITY GeneradorVideo;

ARCHITECTURE GV OF GeneradorVideo IS
    TYPE matrix IS ARRAY (0 TO 7) OF STD_LOGIC_VECTOR(0 TO 15);
    SIGNAL numRow : INTEGER RANGE 0 TO 7;
BEGIN
    RecorrerMatriz : PROCESS (CLK1KHz)
    BEGIN

        -- Moviendo cursor de fila
        IF rising_edge(CLK1KHz) THEN
            CASE numRow IS
                WHEN 0 => row <= "10000000";
                WHEN 1 => row <= "01000000";
                WHEN 2 => row <= "00100000";
                WHEN 3 => row <= "00010000";
                WHEN 4 => row <= "00001000";
                WHEN 5 => row <= "00000100";
                WHEN 6 => row <= "00000010";
                WHEN 7 => row <= "00000001";
                WHEN OTHERS => row <= "00000000";
            END CASE;

            -- Enviando datos de columna
            CASE numRow IS
                WHEN 0 => column <= d0;
                WHEN 1 => column <= d1;
                WHEN 2 => column <= d2;
                WHEN 3 => column <= d3;
                WHEN 4 => column <= d4;
                WHEN 5 => column <= d5;
                WHEN 6 => column <= d6;
                WHEN 7 => column <= d7;
                WHEN OTHERS => column <= d0;
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