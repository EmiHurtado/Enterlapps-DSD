library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity  contador8bits is

	port(  clk50Mhz : in std_logic;
			 leds : out std_logic_vector (7 downto 0)); 
			 end contador8bits;
	
architecture cuentabinario of contador8bits is
	
signal numeros: std_logic_vector (7 downto 0) :="00000000"; --se inicializa el vector en ceros.
	 
signal reloj_divisor: std_logic;
	 
	 
component Reloj is    	 --  el archivo divisor de frecuencia debe estar en la misma carpeta! 
	                      -- aqui se va a incluir el programa divisor de frecuencia que ya se implementó para trabajar 
								 -- con una frecuencía mas baja en este caso 2Hz!!

	 port( 
	    salida: out std_logic;   -- se copia directamente de los puertos de entrada y salida, del programa reloj!
       clk:    in std_logic;
		 reset:  in std_logic );  
		 
end component ;
	 
	 
	 
begin 
	 
	Reloj1: Reloj port map( reloj_divisor, Clk50Mhz, '1') ;	 --  aqui se relaciona las entradas y salidas de los dos programas!
	 
	proceso_contador: process(reloj_divisor)
	 
	begin
	 
		if  rising_edge(reloj_divisor) 
		then
	 
			numeros<= numeros +1;
	 
		end if;
	 
	end process;
	
   leds<= numeros;  -- checar si son de ánodo común o de cátado común!
	
end cuentabinario;
	
	