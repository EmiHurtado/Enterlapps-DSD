LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.std_arith.ALL;

ENTITY GameManager IS
    PORT (
        movPlayer1, movPlayer2 : IN INTEGER RANGE -1 TO 1; -- ? Leer PlayerManager para más detalles
        coordsP1, coordsP2 : INOUT INTEGER RANGE 0 TO 480; -- ? Hasta qué resolución en alto podemos usar
        coordsBallX : INOUT INTEGER RANGE 0 TO 640; -- ? Hasta qué resolución en ancho podemos usar
        coordsBallY : INOUT INTEGER RANGE 0 TO 480; -- ? Hasta qué resolución en alto podemos usar
        scoreP1, scoreP2 : INOUT INTEGER RANGE 0 TO 9;
        clkPlayer, clkImage, pauseBtn, selectBtn : IN STD_LOGIC;
        sound : OUT STD_LOGIC;
        -- ! añadir salida para la imagen
    );
END ENTITY GameManager;

ARCHITECTURE GM OF GameManager IS
    SIGNAL pausedGame : STD_LOGIC := '0';
    SIGNAL phaseGame : INTEGER RANGE 0 TO 3; -- 0 - Antes de lanzar, 1 - Corriendo, 2 - Pausado, 3 - Victoria
BEGIN
    PROCESS (clk, pausedGame)
    BEGIN
        IF (clk'event AND clk = '1' AND pausedGame = '0')
        BEGIN
            game : PROCESS (phaseGame)
            BEGIN
                IF (phaseGame = '0') THEN
                    -- TODO: Phase de lanzamiento
                ELSIF (phaseGame = '1') THEN
                    --TODO: Juego
                ELSIF (phaseGame = '2') THEN
                    -- TODO: Fase de pausa
                ELSIF (phaseGame = '3') THEN
                    -- TODO: Fase de victoria
                END IF;
            END PROCESS game;
        END IF;
    END PROCESS;
END ARCHITECTURE GM;