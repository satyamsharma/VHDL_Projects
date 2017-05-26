library ieee;
use ieee.std_logic_1164.all;

entity sharma_8bitComparator is
port (a, b 	   : in std_logic_vector(7 downto 0);
      eq,notEq : out std_logic);
end sharma_8bitComparator;

architecture arch of sharma_8bitComparator is

  component sharma_1bitComparator
  port (I0, I1: in std_logic;
           Eq, notEq: out std_logic);
  end component;
  signal e0,e1,e2,e3,e4,e5,e6,e7,ne0,ne1,ne2,ne3,ne4,ne5,ne6,ne7: std_logic;
  begin

  H1: sharma_1bitComparator port map(I0=>a(0), I1=>b(0), Eq=>e0, notEq=>ne0);
  H2: sharma_1bitComparator port map(I0=>a(1), I1=>b(1), Eq=>e1, notEq=>ne1);
  H3: sharma_1bitComparator port map(I0=>a(2), I1=>b(2), Eq=>e2, notEq=>ne2);
  H4: sharma_1bitComparator port map(I0=>a(3), I1=>b(3), Eq=>e3, notEq=>ne3);
  H5: sharma_1bitComparator port map(I0=>a(4), I1=>b(4), Eq=>e4, notEq=>ne4);
  H6: sharma_1bitComparator port map(I0=>a(5), I1=>b(5), Eq=>e5, notEq=>ne5);
  H7: sharma_1bitComparator port map(I0=>a(6), I1=>b(6), Eq=>e6, notEq=>ne6);
  H8: sharma_1bitComparator port map(I0=>a(7), I1=>b(7), Eq=>e7, notEq=>ne7);  
  
  eq <= e0 and e1 and e2 and e3 and e4 and e5 and e6 and e7;
  notEq <= ne0 or ne1 or ne2 or ne3 or ne4 or ne5 or ne6 or ne7;
  
end arch;