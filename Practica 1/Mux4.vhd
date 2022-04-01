library ieee;
use ieee.std_logic_1164.all;

entity Mux4 is
    port (
        d0, d1, d2, d3, selector0, selector1 : in std_logic;
        Q : out std_logic
    );
end entity Mux4;

architecture multiplexor4 of Mux4 is
signal sel : std_logic_vector(1 downto 0);
begin
    sel(0) <= selector0;
    sel(1) <= selector1;
    Q <= d0 when sel = "00" else
        d1 when sel = "01" else
        d2 when sel = "10" else
        d3 when sel = "11";
end architecture multiplexor4;