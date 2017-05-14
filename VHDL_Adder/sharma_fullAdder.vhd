library  ieee;
use  ieee.std_logic_1164.all;

entity sharma_fullAdder is 
	port (A,B,Cin : in std_logic;
	      Sum,Cout  : out std_logic);
end sharma_fullAdder;

architecture structure_view of sharma_fullAdder is 
	
	component sharma_halfAdder
	port (A,B : in std_logic;
	      Sum, Carry: out std_logic);
	end component;
	
	component or_gate 
	port(I1,I2 : in std_logic; O : out std_logic);
	end component;
		
	signal Y0, Z0, Z1 : std_logic;

begin 
	
		HA0: sharma_halfAdder port map(A,B,Y0,Z0);
		HA1: sharma_halfAdder port map(Cin,Y0,Sum,Z1);
		Cout <= Z0 or Z1;
	
end structure_view;