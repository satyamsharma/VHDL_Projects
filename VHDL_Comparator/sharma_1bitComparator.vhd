Library ieee;
use ieee.std_logic_1164.all;

entity sharma_1bitComparator is
  port (    I0, I1 : in std_logic;
         Eq, notEq : out std_logic);
end sharma_1bitComparator;

architecture arch of sharma_1bitComparator is
  signal p0, p1 : std_logic;
  begin
    EQ    <= p0 or p1;
    notEq <= not(p0 or p1);
    p0    <= (not I0) and (not I1);
    p1    <= I0 and I1;
      
end arch;
