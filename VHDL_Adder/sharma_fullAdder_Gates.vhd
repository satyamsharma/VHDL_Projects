library  ieee;
use  ieee.std_logic_1164.all;

entity sharma_fullAdder_Gates is
	port(	A, B, Cin : in std_logic;
			Sum, Cout : out std_logic);
end sharma_fullAdder_Gates;

architecture arch of sharma_fullAdder_Gates is
begin
	SUM <= (A xor B) xor Cin;
	Cout <= (A and B) or (Cin and (A xor B));
end arch;