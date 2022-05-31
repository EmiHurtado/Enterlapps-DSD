LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY TestMatrix IS
    PORT (
        clk : IN STD_LOGIC;
        d0, d1, d2, d3, d4, d5, d6, d7 : OUT STD_LOGIC_VECTOR(0 TO 15)
    );
END ENTITY TestMatrix;

ARCHITECTURE TM OF TestMatrix IS
    TYPE Matrix IS ARRAY (0 TO 7) OF STD_LOGIC_VECTOR(0 TO 15);
    SIGNAL data : Matrix;
    SIGNAL posX : INTEGER RANGE 0 TO 15 := 0;
    SIGNAL posY : INTEGER RANGE 0 TO 7 := 0;
    SIGNAL value : STD_LOGIC := '1';
BEGIN
    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            data(posY)(posX) <= value;
            IF posX = 15 THEN
                IF posY = 7 THEN
                    posX <= 0;
                    posY <= 0;
                    value <= NOT value;
                ELSE
                    posX <= 0;
                    posY <= posY + 1;
                END IF;
            ELSE
                posX <= posX + 1;
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE TM;