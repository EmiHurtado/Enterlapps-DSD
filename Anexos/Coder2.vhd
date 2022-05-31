library IEEE;
use IEEE.std_logic_1164.all;

entity Coder2 is
    port (
        A, B : in std_logic;
        output : out std_logic_vector(1 downto 0)
    );
end entity Coder2;

architecture c2 of Coder2 is
begin
    output(0) <= A;
    output(1) <= B;
end architecture c2;