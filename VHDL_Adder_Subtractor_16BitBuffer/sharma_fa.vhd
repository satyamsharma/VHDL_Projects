Library ieee;
use ieee.std_logic_1164.all;

entity sharma_fa is
  port(a, b : in std_logic;
  cin : in std_logic;
  cout : out std_logic;
  sum : out std_logic);
end sharma_fa;

architecture arch of sharma_fa is
begin
cout <= (a and b) or ((a xor b) and cin); --carry out equation
sum <= a xor b xor cin;
end arch;