LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Juego IS
    PORT (
        CLK, btnJ1, btnJ2 : IN STD_LOGIC;
        leds : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        soundMiliseconds : OUT INTEGER RANGE 0 TO 511;
        score1, score2 : OUT INTEGER RANGE 0 TO 9
    );
END ENTITY Juego;

ARCHITECTURE game OF Juego IS
    SIGNAL ledValue : INTEGER RANGE 0 TO 9 := 1;
    SIGNAL increasing, lastWinner : STD_LOGIC := '1';
BEGIN
    procJuego : PROCESS (CLK)
    BEGIN
        IF rising_edge(CLK) THEN
            IF increasing = '1' THEN
                ledValue <= ledValue + 1;
            ELSE
                ledValue <= ledValue - 1;
            END IF;

            IF ledValue < 9 AND ledValue > 0 THEN
                CASE ledValue IS
                    WHEN 1 => leds <= "10000000";
                    WHEN 2 => leds <= "01000000";
                    WHEN 3 => leds <= "00100000";
                    WHEN 4 => leds <= "00010000";
                    WHEN 5 => leds <= "00001000";
                    WHEN 6 => leds <= "00000100";
                    WHEN 7 => leds <= "00000010";
                    WHEN 8 => leds <= "00000001";
                    WHEN OTHERS => leds <= "00000000";
                END CASE;

                IF (ledValue = 9 AND btnJ2 = '1') THEN
                    increasing <= '0';
                    soundMiliseconds <= 300;
                ELSIF (ledValue = 0 AND btnJ1 = '1') THEN
                    increasing <= '1';
                    soundMiliseconds <= 300;
                END IF;
            END IF;

        END IF;
    END PROCESS procJuego;
END CASE;

END ARCHITECTURE game;