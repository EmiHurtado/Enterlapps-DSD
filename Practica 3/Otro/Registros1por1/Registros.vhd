library ieee;
use ieee.std_logic_1164.all;

entity Registros is
	port(
		 CLK, RESET,CARGA : in std_logic;
		 OPCIONES 			: in std_logic_vector(2 downto 0);
		 ENTRADA 			: in std_logic_vector(7 downto 0);
		 SALIDA 				: out std_logic_vector(7 downto 0);
		 LEDS					: out std_logic_vector(2 downto 0)
	);
end Registros;	

architecture funcion of Registros is

--Declaracion del componente "DivisorDeFrecuencia":
	--Despues de component colocamos el nombre de la entidad no del archivo .vhd
	--Copiamos todo su port
	component DivisorDeFrecuencia							
		port(
			CLK, RESET : IN STD_LOGIC;
			salida : OUT STD_LOGIC
		);
	end component;
	
--Declaracion del componente "RegCorrimiento1":
	component RegCorrimiento1   
	port (
	   CLK, RESET, CARGA : in std_logic;
		ENTRADA				: in std_logic_vector(7 downto 0);
		SALIDA				: out std_logic_vector(7 downto 0)	
	);
	end component;
	
--Declaracion del componente "RegCorrimiento2":
	component RegCorrimiento2   
	port (
	   CLK, RESET, CARGA : in std_logic;
		ENTRADA				: in std_logic_vector(7 downto 0);
		SALIDA				: out std_logic_vector(7 downto 0)	
	);
	end component;
	
--Declaracion del componente "RegCorrimiento3":
	component RegCorrimiento3   
	port (
	   CLK, RESET, CARGA : in std_logic;
		ENTRADA				: in std_logic_vector(7 downto 0);
		SALIDA				: out std_logic_vector(7 downto 0)	
	);
	end component;
	
--Declaracion del componente "RegCorrimiento4":
	component RegCorrimiento4   
	port (
	   CLK, RESET, CARGA : in std_logic;
		ENTRADA				: in std_logic_vector(7 downto 0);
		SALIDA				: out std_logic_vector(7 downto 0)	
	);
	end component;

--Declaracion del componente "RegCorrimiento5":
	component RegCorrimiento5   
	port (
	   CLK, RESET, CARGA : in std_logic;
		ENTRADA				: in std_logic_vector(7 downto 0);
		SALIDA				: out std_logic_vector(7 downto 0)	
	);
	end component;
	
--Declaracion del componente "RegCorrimiento6":
	component RegCorrimiento6   
	port (
	   CLK, RESET, CARGA : in std_logic;
		ENTRADA				: in std_logic_vector(7 downto 0);
		SALIDA				: out std_logic_vector(7 downto 0)	
	);
	end component;
	
--Declaracion del componente "RegCorrimiento7":
	component RegCorrimiento7   
	port (
	   CLK, RESET, CARGA : in std_logic;
		ENTRADA				: in std_logic_vector(7 downto 0);
		SALIDA				: out std_logic_vector(7 downto 0)	
	);
	end component;
	
--Declaracion del componente "Multiplexor"
	component Multiplexor
	port(
		MUX									: in std_logic_vector(2 downto 0);
		Salida								: out std_logic_vector(7 downto 0);	
		Entrada1,Entrada2,Entrada3		: in std_logic_vector(7 downto 0);
		Entrada4,Entrada5,Entrada6		: in std_logic_vector(7 downto 0);
		Entrada7								: in std_logic_vector(7 downto 0)
	);
	end component;
	
--Declaracion de las seÃƒÂ±ales que realizan las interconexiones
	signal Wire_CLK		: std_logic;
	signal Entrada1,Entrada2,Entrada3,Entrada4,Entrada5,Entrada6,Entrada7: std_logic_vector(7 downto 0);
		

	
begin
-- Referencia al componente DivisorDeFrecuencia, la referencia se llamara Reloj
	Reloj : DivisorDeFrecuencia
		port map(
			--(Puerto interno del componente) => (señal o puerto de la arquitectura)
			CLK 		=>	CLK,
			RESET		=>	RESET,
			salida	=>	Wire_CLK
		);
		
-- Referencia al componente RegCorrimiento1, la referencia se llamara Reg1
	Reg1 : RegCorrimiento1
		port map(
			ENTRADA		=> ENTRADA,
			CLK			=> Wire_CLK,
			RESET			=> RESET,
			CARGA			=> CARGA,
			SALIDA 		=> Entrada1
		);
-- Referencia al componente RegCorrimiento3, la referencia se llamara Reg2
	Reg2 : RegCorrimiento2
		port map(
			ENTRADA		=> ENTRADA,
			CLK			=> Wire_CLK,
			RESET			=> RESET,
			CARGA			=> CARGA,
			SALIDA 		=> Entrada2
		);
-- Referencia al componente RegCorrimiento3, la referencia se llamara Reg3
	Reg3 : RegCorrimiento3
		port map(
			ENTRADA		=> ENTRADA,
			CLK			=> Wire_CLK,
			RESET			=> RESET,
			CARGA			=> CARGA,
			SALIDA 		=> Entrada3
		);
		
-- Referencia al componente RegCorrimiento4, la referencia se llamara Reg4
	Reg4 : RegCorrimiento4
		port map(
			ENTRADA		=> ENTRADA,
			CLK			=> Wire_CLK,
			RESET			=> RESET,
			CARGA			=> CARGA,
			SALIDA 		=> Entrada4
		);

-- Referencia al componente RegCorrimiento5, la referencia se llamara Reg5
	Reg5 : RegCorrimiento5
		port map(
			ENTRADA		=> ENTRADA,
			CLK			=> Wire_CLK,
			RESET			=> RESET,
			CARGA			=> CARGA,
			SALIDA 		=> Entrada5
		);
-- Referencia al componente RegCorrimiento6, la referencia se llamara Reg6
	Reg6 : RegCorrimiento6
		port map(
			ENTRADA		=> ENTRADA,
			CLK			=> Wire_CLK,
			RESET			=> RESET,
			CARGA			=> CARGA,
			SALIDA 		=> Entrada6
		);
		
-- Referencia al componente RegCorrimiento7, la referencia se llamara Reg7
	Reg7 : RegCorrimiento7
		port map(
			ENTRADA		=> ENTRADA,
			CLK			=> Wire_CLK,
			RESET			=> RESET,
			CARGA			=> CARGA,
			SALIDA 		=> Entrada7
		);

-- Referencia al componente Multiplexor, la referencia se llamara Mux
	Mux : Multiplexor
		port map(
			Entrada1 => Entrada1,
			Entrada2 => Entrada2,
			Entrada3 => Entrada3,
			Entrada4 => Entrada4,
			Entrada5 => Entrada5,
			Entrada6 => Entrada6,
			Entrada7 => Entrada7,
			Salida	=>	SALIDA,
			MUX		=>	OPCIONES
		);
		

	LEDS(2) 	<= NOT Wire_CLK;
	LEDS(1)	<= NOT CARGA;
	LEDS(0)	<=	NOT ENTRADA(7);
end funcion;