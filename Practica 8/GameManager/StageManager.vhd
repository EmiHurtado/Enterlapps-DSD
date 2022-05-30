LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY StageManager IS
    PORT (
        CLK, pause : IN STD_LOGIC;
        posPlayer1, posPlayer2 : IN INTEGER RANGE 1 TO 6;
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
    SIGNAL state : INTEGER RANGE 0 TO 4; -- No iniciado, jugando, pausado, anotación, esperandoLanzamiento
    SIGNAL tempDir : INTEGER RANGE 0 TO 3; -- 0º, 30, 45º y 60º
BEGIN
    -- Variable aleatoria
    PROCESS (CLK, pause)
    BEGIN
        IF (rising_edge(CLK)) THEN
            -- Verificar si el juego ha sido iniciado
            CASE state IS
                WHEN 0 => -- No iniciado
                    derIzq <= 0;
                    tempDir <= direction;
                    CASE direction IS
                        WHEN 0 => downUp <= 0;
                        WHEN 1 => downUp <= 0;
                        WHEN OTHERS => downUp <= 1;
                    END CASE;
                    matrixData(0) <= "0000000000000000";
                    matrixData(1) <= "0000000000000000";
                    matrixData(2) <= "0000000000000000";
                    matrixData(3) <= "0100000000000000";
                    matrixData(4) <= "0000000000000000";
                    matrixData(5) <= "0000000000000000";
                    matrixData(6) <= "0000000000000000";
                    matrixData(7) <= "0000000000000000";
                    scoreP1 <= 0;
                    scoreP2 <= 0;
                    -- Encendemos los focos de las barras del jugador
                    matrixData(posPlayer1 - 1)(0) <= '1';
                    matrixData(posPlayer1)(0) <= '1';
                    matrixData(posPlayer1 + 1)(0) <= '1';
                    matrixData(posPlayer2 - 1)(15) <= '1';
                    matrixData(posPlayer2)(15) <= '1';
                    matrixData(posPlayer2 + 1)(15) <= '1';
                    state <= 4;
                WHEN 1 => -- Jugando
                    IF (pause = '1') THEN -- Leer pausa
                        state <= 2; -- Pasar a pausa
                    END IF;

                    IF posX > 0 AND posX < 15 THEN -- Verificamos que no esté tocando los bordes (Perder)
                        matrixData(posX)(posY) <= '0'; -- Apagamos el foco de la posición actual antes de moverlo

                        -- Encendemos los focos de las barras del jugador
                        matrixData(posPlayer1 - 1)(0) <= '1';
                        matrixData(posPlayer1)(0) <= '1';
                        matrixData(posPlayer1 + 1)(0) <= '1';
                        matrixData(posPlayer2 - 1)(15) <= '1';
                        matrixData(posPlayer2)(15) <= '1';
                        matrixData(posPlayer2 + 1)(15) <= '1';

                        -- Verificamos si está en los bordes superior o inferior para cambiar su dirección
                        IF posY = 0 THEN
                            downUp <= 0;
                        ELSIF posY = 7 THEN
                            downUp <= 1;
                        END IF;

                        -- ! Borrar cuando inicie el juego
                        --IF (posX = 1 AND matriz(0, posY) = '1') THEN -- Cuando va a la izquierda y el jugador tiene su barra ahí
                        --    derIzq <= 0;
                        --    tempDir <= direction;
                        --ELSIF (posX = 14 AND matriz(15, posY) = '1') THEN -- Cuando va a la derecha
                        --    derIzq <= 1;
                        --    tempDir <= direction;
                        --END IF;
                        IF posX = 1 THEN -- Cuando va a la izquierda y el jugador tiene su barra ahí
                            derIzq <= 0;
                            tempDir <= direction;
                        ELSIF posX = 14 THEN -- Cuando va a la derecha
                            derIzq <= 1;
                            tempDir <= direction;
                        END IF;

                        -- Mover la pelota dependiendo de su dirección y encender el led
                        CASE tempDir IS
                            WHEN 0 => -- 0º
                                posX <= posX + 1 - ((-2) * derIzq);
                            WHEN 1 => -- 30º
                                posX <= posX + 1 - ((-2) * derIzq);
                                IF alreadyMoved = '1' THEN
                                    posY <= posY + 1 - ((-2) * downUp);
                                    alreadyMoved <= '0';
                                ELSE
                                    alreadyMoved <= '1';
                                END IF;
                            WHEN 2 => -- 45º
                                posX <= posX + 1 - ((-2) * derIzq);
                                posY <= posY + 1 - ((-2) * downUp);
                            WHEN 3 => -- 60º
                                posY <= posY + 1 - ((-2) * downUp);
                                IF alreadyMoved = '1' THEN
                                    posX <= posX + 1 - ((-2) * derIzq);
                                    alreadyMoved <= '0';
                                ELSE
                                    alreadyMoved <= '1';
                                END IF;
                            WHEN OTHERS => NULL;
                        END CASE;
                        matrixData(posX)(posY) <= '1';
                    ELSE
                        IF posX = 0 THEN
                            scoreP1 <= scoreP1 + 1;
                        ELSE
                            scoreP2 <= scoreP1 + 1;
                        END IF;
                        state <= 3;
                    END IF;
                WHEN 2 => -- Pausado
                    IF (pause = '1') THEN
                        state <= 1; -- Pasar a estado jugando
                    END IF;
                WHEN 3 => -- Anotación
                    -- Festejar hasta la pausa
                    matrixData(0) <= "1000000000000001";
                    matrixData(1) <= "0100000000000010";
                    matrixData(2) <= "0010000000000100";
                    matrixData(3) <= "0001000000001000";
                    matrixData(4) <= "0000100000010000";
                    matrixData(5) <= "0000010000100000";
                    matrixData(6) <= "0000001001000000";
                    matrixData(7) <= "0000000110000000";
                    IF (pause = '1') THEN
                        state <= 4; -- Pasar a estado esperandoLanzamiento
                    END IF;
                WHEN 4 =>
                    -- Permitir movimiento
                    IF (pause = '1') THEN
                        state <= 1; -- Pasar a estado jugando
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