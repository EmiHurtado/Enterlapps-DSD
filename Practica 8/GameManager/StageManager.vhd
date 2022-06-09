LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

-- i Este es el código más importante pues es el cerebro del juego.
-- i Gestiona las fases e interacciones del jugador con el sistema

ENTITY StageManager IS
    PORT (
        CLK, pause : IN STD_LOGIC;
        posPlayer1, posPlayer2 : IN INTEGER RANGE 0 TO 7;
        direction : IN INTEGER RANGE 0 TO 3; -- Dirección de la bola: 0º, 30º, 45º y 60º
        d0, d1, d2, d3, d4, d5, d6, d7 : OUT STD_LOGIC_VECTOR(0 TO 15); -- Salidas de datos
        scoreP1, scoreP2 : INOUT INTEGER RANGE 0 TO 9;
        rst : OUT STD_LOGIC -- Señal de reseteo para las posiciones de los jugadores
    );
END ENTITY StageManager;

ARCHITECTURE BC OF StageManager IS
    -- tipo de dato auxiliar para manejar todos los datos como coordenadas
    TYPE Matrix IS ARRAY (0 TO 7) OF STD_LOGIC_VECTOR(0 TO 15);

    -- Declaración de variables locales
    SIGNAL matrixData : Matrix;
    -- variable necesaria para las direcciones 1 y 3 (30 y 60 grados)
    SIGNAL alreadyMoved : STD_LOGIC := '0';
    SIGNAL derIzq, downUp : INTEGER RANGE 0 TO 1 := 0;
    SIGNAL posX : INTEGER RANGE 0 TO 15 := 1;
    SIGNAL posY : INTEGER RANGE 0 TO 7 := 3;
    SIGNAL state : INTEGER RANGE 0 TO 5; -- No iniciado, jugando, pausado, anotación, esperandoLanzamiento, ganado
    SIGNAL tempDir : INTEGER RANGE 0 TO 3; -- 0º, 30, 45º y 60º
    SIGNAL golJug : INTEGER RANGE 1 TO 2; -- Varuable que indica el jugador que hizo la anotación
BEGIN
    -- Variable aleatoria
    PROCESS (CLK)
    BEGIN
        IF (rising_edge(CLK)) THEN
            -- Gestor de fase del juego
            CASE state IS
                WHEN 0 => -- No iniciado (Reinicia variables y muestra pantalla de título)
                    rst <= '1';
                    scoreP1 <= 1;
                    scoreP2 <= 2;

                    -- Escribe "PONG"
                    matrixData(0) <= "1111111111111111";
                    matrixData(1) <= "0001000101101000";
                    matrixData(2) <= "0101010100101011";
                    matrixData(3) <= "0001010101001010";
                    matrixData(4) <= "0111000101101000";
                    matrixData(5) <= "1111111111111111";
                    matrixData(6) <= "1111111111111111";
                    matrixData(7) <= "1111111111111111";

                    matrixData(6)(posX) <= '0';

                    -- Para determinar la dirección de la pelota
                    IF posX > 13 THEN
                        derIzq <= 1;
                    ELSIF posX < 2 THEN
                        derIzq <= 0;
                    END IF;

                    posX <= posX + 1 - (2 * derIzq);

                    -- Al pulsar pausa reinicia los datos e inicia un nuevo juego
                    IF (pause = '1') THEN
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
                        state <= 4; -- Pasar a EsperandoLanzamiento
                    END IF;
                WHEN 1 => -- Jugando (Gestiona físicas del juego, interacciones de los jugadores y todo en general)
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

                        -- Verifica si la pelota está golpeando las barras del jugador o no y mueve la pelota dependiendo de la situación
                        IF (posX < 2 AND derIzq = 1 AND (posY = posPlayer1 OR posY = posPlayer1 - 1 OR posY = posPlayer1 + 1)) THEN -- Cuando va a la izquierda y el jugador tiene su barra ahí
                            -- Si golpea la barra del jugador 1
                            derIzq <= 0;
                            tempDir <= direction;
                        ELSIF (posX > 13 AND derIzq = 0 AND (posY = posPlayer2 OR posY = posPlayer2 - 1 OR posY = posPlayer2 + 1)) THEN -- Cuando va a la derecha
                            -- Si golpea la barra del jugador 2
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
                        -- Si está en 0 o 15 significa que se hizo una anotación
                        IF posX = 0 THEN -- Si el jugador 1 anotó
                            scoreP2 <= scoreP2 + 1;
                            golJug <= 2;
                        ELSE -- Si el jugador 2 anotó
                            scoreP1 <= scoreP1 + 1;
                            golJug <= 1;
                        END IF;
                        state <= 3; -- Pasa a estado Anotación
                    END IF;
                WHEN 2 => -- Pausado
                    -- Si está pausado el juego no hace nada
                    -- TODO: Activar una señal 'Block' para que los jugadores no puedan mover las barras si está en pausa
                    IF (pause = '1') THEN
                        state <= 1; -- Pasar a estado jugando
                    END IF;
                WHEN 3 => -- Anotación
                    IF scoreP1 = 9 OR scoreP2 = 9 THEN
                        -- Si la puntuación de alguno de los jugadores ya es 9
                        --  entonces pasa a estado Ganado
                        state <= 5;
                    ELSE -- Si no, solo muestra la pantalla de "GOL"
                        -- Festejar hasta la pausa
                        matrixData(0) <= "1000010000100001";
                        matrixData(1) <= "1011110111110011";
                        matrixData(2) <= "1000010001110011";
                        matrixData(3) <= "1111010111110011";
                        matrixData(4) <= "1000010000110011";
                        IF golJug = 1 THEN -- Si el jugador 1 hizo la anotación, la flecha apunta a la izquierda
                            posX <= 1;
                            matrixData(5) <= "1101111111111111";
                            matrixData(6) <= "1000000000000001";
                            matrixData(7) <= "1101111111111111";
                            derIzq <= 0;
                        ELSE -- Sino, la flecha apunta a la derecha
                            posX <= 14;
                            matrixData(5) <= "1111111111111011";
                            matrixData(6) <= "1000000000000001";
                            matrixData(7) <= "1111111111111011";
                            derIzq <= 1;
                        END IF;
                        posY <= 4; -- Reinicia la posición Y de la pelota
                        IF (pause = '1') THEN
                            -- Coloca la pelota en la barra del jugador que anotó
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

                    -- Permite el movimiento de los jugadores para que puedan lanzar desde donde quieran
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
                        -- Si el jugador 1 lleg´oa los 9 puntos, la flecha apuntará a la izquierda
                        matrixData(5) <= "1101111111111111";
                        matrixData(6) <= "1000000000000001";
                        matrixData(7) <= "1101111111111111";
                    ELSE -- Sino, apuntará a la derecha
                        matrixData(5) <= "1111111111111011";
                        matrixData(6) <= "1000000000000001";
                        matrixData(7) <= "1111111111111011";
                    END IF;
                    IF (pause = '1') THEN
                        -- Limpia los datos y pasa a la pantalla de título
                        rst <= '1';
                        derIzq <= 0;
                        posX <= 0;
                        posY <= 6;
                        state <= 0; -- Pasar a estado noIniciado
                    END IF;
                WHEN OTHERS => NULL;
            END CASE;

            -- Salida de valores para que se muestren en la matriz de leds
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