LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY StageManager IS
    PORT (
        CLK, pause : IN STD_LOGIC;
        posPlayer1, posPlayer2 : IN INTEGER RANGE 0 TO 7;
        direction : IN INTEGER RANGE 0 TO 3; -- 0º, 30, 45º y 60º
        d0, d1, d2, d3, d4, d5, d6, d7 : OUT STD_LOGIC_VECTOR(0 TO 15);
        scoreP1, scoreP2 : INOUT INTEGER RANGE 0 TO 9;
        rst : OUT STD_LOGIC
    );
END ENTITY StageManager;

ARCHITECTURE BC OF StageManager IS
    TYPE Matrix IS ARRAY (0 TO 7) OF STD_LOGIC_VECTOR(0 TO 15);
    SIGNAL matrixData : Matrix;
    SIGNAL alreadyMoved : STD_LOGIC := '0';
    SIGNAL derIzq, downUp : INTEGER RANGE 0 TO 1 := 0;
    SIGNAL posX : INTEGER RANGE 0 TO 15 := 1;
    SIGNAL posY : INTEGER RANGE 0 TO 7 := 3;
    SIGNAL state : INTEGER RANGE 0 TO 5; -- No iniciado, jugando, pausado, anotación, esperandoLanzamiento, ganado
    SIGNAL tempDir : INTEGER RANGE 0 TO 3; -- 0º, 30, 45º y 60º
    SIGNAL golJug : INTEGER RANGE 1 TO 2;
BEGIN
    -- Variable aleatoria
    PROCESS (CLK)
    BEGIN
        IF (rising_edge(CLK)) THEN
            -- Verificar si el juego ha sido iniciado
            CASE state IS
                WHEN 0 => -- No iniciado
                    rst <= '0';
                    derIzq <= 0;
                    tempDir <= direction;
                    CASE direction IS
                        WHEN 0 =>
                            downUp <= 0;
                            posX <= 1;
                        WHEN 1 =>
                            downUp <= 0;
                            posX <= 1;
                        WHEN OTHERS =>
                            downUp <= 1;
                            posX <= 14;
                    END CASE;
                    scoreP1 <= 0;
                    scoreP2 <= 0;
                    state <= 4;
                WHEN 1 => -- Jugando
                    -- Limpiar display
                    matrixData(0) <= "1111111111111111";
                    matrixData(1) <= "1111111111111111";
                    matrixData(2) <= "1111111111111111";
                    matrixData(3) <= "1111111111111111";
                    matrixData(4) <= "1111111111111111";
                    matrixData(5) <= "1111111111111111";
                    matrixData(6) <= "1111111111111111";
                    matrixData(7) <= "1111111111111111";
                    IF (pause = '1') THEN -- Leer pausa
                        state <= 2; -- Pasar a pausa
                    END IF;

                    IF posX > 0 AND posX < 15 THEN -- Verificamos que no esté tocando los bordes (Perder)
                        -- Encendemos los focos de las barras del jugador
                        matrixData(posPlayer1 - 1)(0) <= '0';
                        matrixData(posPlayer1)(0) <= '0';
                        matrixData(posPlayer1 + 1)(0) <= '0';
                        matrixData(posPlayer2 - 1)(15) <= '0';
                        matrixData(posPlayer2)(15) <= '0';
                        matrixData(posPlayer2 + 1)(15) <= '0';

                        -- Verificamos si está en los bordes superior o inferior para cambiar su dirección
                        IF posY = 1 THEN
                            downUp <= 0;
                        ELSIF posY = 6 THEN
                            downUp <= 1;
                        END IF;

                        -- IF ((posX < 3 AND derIzq = 0) OR (posX > 12 AND derIzq = 1)) THEN
                        --     tempDir <= 0;
                        -- END IF;

                        IF (posX < 2 AND derIzq = 1 AND (posY = posPlayer1 OR posY = posPlayer1 - 1 OR posY = posPlayer1 + 1)) THEN -- Cuando va a la izquierda y el jugador tiene su barra ahí
                            derIzq <= 0;
                            tempDir <= direction;
                        ELSIF (posX > 13 AND derIzq = 0 AND (posY = posPlayer2 OR posY = posPlayer2 - 1 OR posY = posPlayer2 + 1)) THEN -- Cuando va a la derecha
                            derIzq <= 1;
                            tempDir <= direction;
                        ELSE
                            -- Mover la pelota dependiendo de su dirección y encender el led
                            CASE tempDir IS
                                WHEN 0 => -- 0º
                                    posX <= posX + 1 - (2 * derIzq);
                                WHEN 1 => -- 30º
                                    posX <= posX + 1 - ((2) * derIzq);
                                    IF alreadyMoved = '1' THEN
                                        posY <= posY + 1 - ((2) * downUp);
                                        alreadyMoved <= '0';
                                    ELSE
                                        alreadyMoved <= '1';
                                    END IF;
                                WHEN 2 => -- 45º
                                    posX <= posX + 1 - ((2) * derIzq);
                                    posY <= posY + 1 - ((2) * downUp);
                                WHEN 3 => -- 60º
                                    posY <= posY + 1 - ((2) * downUp);
                                    IF alreadyMoved = '1' THEN
                                        posX <= posX + 1 - ((2) * derIzq);
                                        alreadyMoved <= '0';
                                    ELSE
                                        alreadyMoved <= '1';
                                    END IF;
                                WHEN OTHERS => NULL;
                            END CASE;
                        END IF;
                        matrixData(posY)(posX) <= '0'; -- Encendemos led donde está actualmente la pelota
                    ELSE
                        IF posX = 0 THEN
                            scoreP2 <= scoreP2 + 1;
                            golJug <= 2;
                        ELSE
                            scoreP1 <= scoreP1 + 1;
                            golJug <= 1;
                        END IF;
                        state <= 3;
                    END IF;
                WHEN 2 => -- Pausado
                    IF (pause = '1') THEN
                        state <= 1; -- Pasar a estado jugando
                    END IF;
                WHEN 3 => -- Anotación
                    IF scoreP1 = 9 OR scoreP2 = 9 THEN
                        state <= 5;
                    ELSE
                        -- Festejar hasta la pausa
                        matrixData(0) <= "1000110000101111";
                        matrixData(1) <= "1011110110101111";
                        matrixData(2) <= "1010010110101111";
                        matrixData(3) <= "1011010110101111";
                        matrixData(4) <= "1000010000100001";
                        IF golJug = 1 THEN
                            posX <= 1;
                            matrixData(5) <= "1101111111111111";
                            matrixData(6) <= "1000000000000001";
                            matrixData(7) <= "1101111111111111";
                            derIzq <= 0;
                        ELSE
                            posX <= 14;
                            matrixData(5) <= "1111111111111011";
                            matrixData(6) <= "1000000000000001";
                            matrixData(7) <= "1111111111111011";
                            derIzq <= 1;
                        END IF;
                        posY <= 4;
                        IF (pause = '1') THEN
                            IF golJug = 1 THEN
                                posX <= 1;
                            ELSE
                                posX <= 14;
                            END IF;
                            rst <= '1';
                            state <= 4; -- Pasar a estado esperandoLanzamiento
                        END IF;
                    END IF;
                WHEN 4 => -- EsperandoLanzamiento
                    rst <= '0';
                    matrixData(0) <= "1111111111111111";
                    matrixData(1) <= "1111111111111111";
                    matrixData(2) <= "1111111111111111";
                    matrixData(3) <= "1111111111111111";
                    matrixData(4) <= "1111111111111111";
                    matrixData(5) <= "1111111111111111";
                    matrixData(6) <= "1111111111111111";
                    matrixData(7) <= "1111111111111111";
                    -- Encendemos los focos de las barras del jugador
                    matrixData(posPlayer1 - 1)(0) <= '0';
                    matrixData(posPlayer1)(0) <= '0';
                    matrixData(posPlayer1 + 1)(0) <= '0';
                    matrixData(posPlayer2 - 1)(15) <= '0';
                    matrixData(posPlayer2)(15) <= '0';
                    matrixData(posPlayer2 + 1)(15) <= '0';

                    -- Permitir movimiento
                    IF posX = 1 THEN
                        posY <= posPlayer1;
                    ELSE
                        posY <= posPlayer2;
                    END IF;

                    matrixData(posY)(posX) <= '0'; -- Encendemos led donde está actualmente la pelota

                    IF (pause = '1') THEN
                        tempDir <= direction;
                        state <= 1; -- Pasar a estado jugando
                    END IF;
                WHEN 5 => -- Jugador gana
                    matrixData(0) <= "0001101101101101";
                    matrixData(1) <= "0111010100101010";
                    matrixData(2) <= "0001000100001000";
                    matrixData(3) <= "0101010101001010";
                    matrixData(4) <= "0001010101101010";
                    IF scoreP1 = 9 THEN
                        matrixData(5) <= "1101111111111111";
                        matrixData(6) <= "1000000000000001";
                        matrixData(7) <= "1101111111111111";
                    ELSE
                        matrixData(5) <= "1111111111111011";
                        matrixData(6) <= "1000000000000001";
                        matrixData(7) <= "1111111111111011";
                    END IF;
                    IF (pause = '1') THEN
                        rst <= '1';
                        state <= 0; -- Pasar a estado noIniciado
                    END IF;
                WHEN OTHERS => NULL;
            END CASE;

            -- Salida de valores
            d0 <= matrixData(0);
            d1 <= matrixData(1);
            d2 <= matrixData(2);
            d3 <= matrixData(3);
            d4 <= matrixData(4);
            d5 <= matrixData(5);
            d6 <= matrixData(6);
            d7 <= matrixData(7);
        END IF;
    END PROCESS;
END ARCHITECTURE BC;