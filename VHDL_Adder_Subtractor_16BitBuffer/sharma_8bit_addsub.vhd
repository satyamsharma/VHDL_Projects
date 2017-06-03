library ieee;
use ieee.std_logic_1164.all;

entity sharma_8bit_addsub is
	port 
	(
		a, b : in std_logic_vector(7 downto 0);
		cin : in std_logic;
		sum : out std_logic_vector(7 downto 0);
		overflow, negative, zero : out std_logic
	);
end sharma_8bit_addsub;

architecture arch of sharma_8bit_addsub is 
component sharma_fa -- component declaration
  port(a, b : in std_logic;
  cin : in std_logic;
  cout : out std_logic;
  sum : out std_logic);
end component;

	signal c, s, inverseB: std_logic_vector(7 downto 0);
	
	begin
	
	inverseB <= (cin & cin & cin & cin & cin & cin & cin & cin) xor b;
	
	fa0  : sharma_fa port map(a(0), inverseB(0), cin, c(0), s(0));
	fa1  : sharma_fa port map(a(1), inverseB(1), c(0), c(1), s(1));
	fa2  : sharma_fa port map(a(2), inverseB(2), c(1), c(2), s(2));
	fa3  : sharma_fa port map(a(3), inverseB(3), c(2), c(3), s(3));
	fa4  : sharma_fa port map(a(4), inverseB(4), c(3), c(4), s(4));
	fa5  : sharma_fa port map(a(5), inverseB(5), c(4), c(5), s(5));
	fa6  : sharma_fa port map(a(6), inverseB(6), c(5), c(6), s(6));
	fa7  : sharma_fa port map(a(7), inverseB(7), c(6), c(7), s(7));
	  
	zero <= not (s(0) or s(1) or s(2) or s(3) or s(4) or s(5) or s(6) or s(7));
	negative <= s(7);
	overflow <= c(7) xor c(6);
	sum <= s;
	
end arch; 