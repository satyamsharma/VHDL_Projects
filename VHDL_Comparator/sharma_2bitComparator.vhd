library ieee;
use ieee.std_logic_1164.all;

entity sharma_2bitComparator is
port (a, b 	   : in std_logic_vector(1 downto 0);
      aeqb,not_Eq : out std_logic);
end sharma_2bitComparator;

architecture arch of sharma_2bitComparator is

  component sharma_1bitComparator
  port (I0, I1: in std_logic;
           Eq, notEq: out std_logic);
  end component;
  signal e0,e1,ne0,ne1: std_logic;
  begin

  H1: sharma_1bitComparator port map(I0=>a(0), I1=>b(0), Eq=>e0, notEq=>ne0);
  H2: sharma_1bitComparator port map(I0=>a(1), I1=>b(1), Eq=>e1, notEq=>ne1);
  
  aeqb <= e0 and e1;
  not_Eq <= ne0 or ne1;
  
end arch;