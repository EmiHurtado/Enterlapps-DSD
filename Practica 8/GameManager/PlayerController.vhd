LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

-- i Este código controla la posición de la
-- i barra del jugador variando cada ciclo
-- ide reloj dependiendo de la entrada del usuario
ENTITY PlayerController IS
    PORT (
        clk, rst, up, down : IN STD_LOGIC;
        pos : INOUT INTEGER RANGE 0 TO 7 := 4
    );
END ENTITY PlayerController;

ARCHITECTURE PC OF PlayerController IS
BEGIN
    PROCESS (clk, rst)
    BEGIN
        -- La señal de rst es usualmente enviada
        -- por el juego para reiniciar la posición de las barras
        IF rst = '1' THEN
            pos <= 4;
        ELSIF rising_edge(clk) THEN
            -- Validar para que no se salga de los límites,
            --  aunque bien podría ser un modo de juego
            --  el que permita aparecer por el otro lado
            IF up = '1' AND pos > 1 THEN
                pos <= pos - 1;
            ELSIF down = '1' AND pos < 6 THEN
                pos <= pos + 1;
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE PC;