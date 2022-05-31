----------------------------------------------------------------------------------
-- Engineer: Mike Field <hamster@snap.net.nz>
-- 
-- Description: TMDS Encoder 
--     8 bits colour, 2 control bits and one blanking bits in
--       10 bits of TMDS encoded data out
--     Clocked at the pixel clock
--
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY TMDS_encoder IS
   PORT (
      clk : IN STD_LOGIC;
      data : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
      c : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
      blank : IN STD_LOGIC;
      encoded : OUT STD_LOGIC_VECTOR (9 DOWNTO 0));
END TMDS_encoder;

ARCHITECTURE Behavioral OF TMDS_encoder IS
   SIGNAL xored : STD_LOGIC_VECTOR (8 DOWNTO 0);
   SIGNAL xnored : STD_LOGIC_VECTOR (8 DOWNTO 0);

   SIGNAL ones : STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL data_word : STD_LOGIC_VECTOR (8 DOWNTO 0);
   SIGNAL data_word_inv : STD_LOGIC_VECTOR (8 DOWNTO 0);
   SIGNAL data_word_disparity : STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL dc_bias : STD_LOGIC_VECTOR (3 DOWNTO 0) := (OTHERS => '0');
BEGIN
   -- Work our the two different encodings for the byte
   xored(0) <= data(0);
   xored(1) <= data(1) XOR xored(0);
   xored(2) <= data(2) XOR xored(1);
   xored(3) <= data(3) XOR xored(2);
   xored(4) <= data(4) XOR xored(3);
   xored(5) <= data(5) XOR xored(4);
   xored(6) <= data(6) XOR xored(5);
   xored(7) <= data(7) XOR xored(6);
   xored(8) <= '1';

   xnored(0) <= data(0);
   xnored(1) <= data(1) XNOR xnored(0);
   xnored(2) <= data(2) XNOR xnored(1);
   xnored(3) <= data(3) XNOR xnored(2);
   xnored(4) <= data(4) XNOR xnored(3);
   xnored(5) <= data(5) XNOR xnored(4);
   xnored(6) <= data(6) XNOR xnored(5);
   xnored(7) <= data(7) XNOR xnored(6);
   xnored(8) <= '0';

   -- Count how many ones are set in data
   ones <= "0000" + data(0) + data(1) + data(2) + data(3)
      + data(4) + data(5) + data(6) + data(7);

   -- Decide which encoding to use
   PROCESS (ones, data(0), xnored, xored)
   BEGIN
      IF ones > 4 OR (ones = 4 AND data(0) = '0') THEN
         data_word <= xnored;
         data_word_inv <= NOT(xnored);
      ELSE
         data_word <= xored;
         data_word_inv <= NOT(xored);
      END IF;
   END PROCESS;

   -- Work out the DC bias of the dataword;
   data_word_disparity <= "1100" + data_word(0) + data_word(1) + data_word(2) + data_word(3)
      + data_word(4) + data_word(5) + data_word(6) + data_word(7);

   -- Now work out what the output should be
   PROCESS (clk)
   BEGIN
      IF rising_edge(clk) THEN
         IF blank = '1' THEN
            -- In the control periods, all values have and have balanced bit count
            CASE c IS
               WHEN "00" => encoded <= "1101010100";
               WHEN "01" => encoded <= "0010101011";
               WHEN "10" => encoded <= "0101010100";
               WHEN OTHERS => encoded <= "1010101011";
            END CASE;
            dc_bias <= (OTHERS => '0');
         ELSE
            IF dc_bias = "00000" OR data_word_disparity = 0 THEN
               -- dataword has no disparity
               IF data_word(8) = '1' THEN
                  encoded <= "01" & data_word(7 DOWNTO 0);
                  dc_bias <= dc_bias + data_word_disparity;
               ELSE
                  encoded <= "10" & data_word_inv(7 DOWNTO 0);
                  dc_bias <= dc_bias - data_word_disparity;
               END IF;
            ELSIF (dc_bias(3) = '0' AND data_word_disparity(3) = '0') OR
               (dc_bias(3) = '1' AND data_word_disparity(3) = '1') THEN
               encoded <= '1' & data_word(8) & data_word_inv(7 DOWNTO 0);
               dc_bias <= dc_bias + data_word(8) - data_word_disparity;
            ELSE
               encoded <= '0' & data_word;
               dc_bias <= dc_bias - data_word_inv(8) + data_word_disparity;
            END IF;
         END IF;
      END IF;
   END PROCESS;
END Behavioral;