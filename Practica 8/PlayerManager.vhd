LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.std_arith.ALL;

ENTITY PlayerManager IS
    PORT (
        btnUp, btnDown, clk : IN STD_LOGIC;
        movValue : OUT INTEGER RANGE -1 TO 1
    );
END ENTITY PlayerManager;

ARCHITECTURE PM OF PlayerManager IS
BEGIN
    PROCESS (clk, btnUp, btnDown)
    BEGIN
        IF rising_edge(clk) THEN
            movValue <=
                -1 WHEN (btnUp = '0' AND btnDown = '1') ELSE
                1 WHEN (btnUp = '1' AND btnDown = '0') ELSE
                0 WHEN OTHERS; -- ? Dónde colocaremos el origen y cómo usaremos las coordenadas?
                -- ? Así el código es: 1 para arriba, -1 para abajo, pero debemos confirmar
        END IF;
    END PROCESS;
END ARCHITECTURE PM;