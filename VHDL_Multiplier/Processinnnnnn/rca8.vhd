library ieee;
use ieee.std_logic_1164.all;

entity rca8 is
  port(a, b : in std_logic_vector(7 downto 0);
  cout : out std_logic;
  sum : out std_logic_vector(7 downto 0));
end rca8;

architecture arch of rca8 is
signal c: std_logic_vector(8 downto 0); --"internal" carry tracker
component sharma_fullAdder is
  port(a, b, cin: in std_logic ;
  cout : out std_logic;
  sum : out std_logic);
end component;

begin
c(0) <= '0';
sharma_fullAdder0 : sharma_fullAdder port map(a => a(0), b => b(0), cin => c(0), cout => c(1), sum => sum(0));
sharma_fullAdder1 : sharma_fullAdder port map(a => a(1), b => b(1), cin => c(1), cout => c(2), sum => sum(1));
sharma_fullAdder2 : sharma_fullAdder port map(a => a(2), b => b(2), cin => c(2), cout => c(3), sum => sum(2));
sharma_fullAdder3 : sharma_fullAdder port map(a => a(3), b => b(3), cin => c(3), cout => c(4), sum => sum(3));
sharma_fullAdder4 : sharma_fullAdder port map(a => a(4), b => b(4), cin => c(4), cout => c(5), sum => sum(4));
sharma_fullAdder5 : sharma_fullAdder port map(a => a(5), b => b(5), cin => c(5), cout => c(6), sum => sum(5));
sharma_fullAdder6 : sharma_fullAdder port map(a => a(6), b => b(6), cin => c(6), cout => c(7), sum => sum(6));
sharma_fullAdder7 : sharma_fullAdder port map(a => a(7), b => b(7), cin => c(7), cout => c(8), sum => sum(7));
cout <= c(8);
end arch;