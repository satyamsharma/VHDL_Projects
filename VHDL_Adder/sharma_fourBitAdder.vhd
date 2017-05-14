library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sharma_fourBitAdder is
Port (	A : in STD_LOGIC_VECTOR (3 downto 0);
			B : in STD_LOGIC_VECTOR (3 downto 0);
			Cin : in STD_LOGIC;
			Sum : out STD_LOGIC_VECTOR (3 downto 0);
			Cout : out STD_LOGIC);
end sharma_fourBitAdder;

architecture arch of sharma_fourBitAdder is

	component sharma_fullAdder
		Port (	A : in STD_LOGIC;
					B : in STD_LOGIC;
					Cin : in STD_LOGIC;
					Sum : out STD_LOGIC;
					Cout : out STD_LOGIC);
	end component;

signal c1,c2,c3,c4: STD_LOGIC;

begin
FA1: sharma_fullAdder port map( A(0), B(0), Cin, Sum(0),c1);
FA2: sharma_fullAdder port map( A(1), B(1), c1, Sum(1), c2);
FA3: sharma_fullAdder port map( A(2), B(2), c2, Sum(2), c3);
FA4: sharma_fullAdder port map( A(3), B(3), c3, Sum(3), Cout);

end arch;