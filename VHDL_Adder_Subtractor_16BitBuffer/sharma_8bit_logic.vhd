library IEEE;
use IEEE.std_logic_1164.all;

entity sharma_8bit_logic is
  port(
  G, P: in std_logic_vector(7 downto 0);
  CIN: in std_logic;
  C: out std_logic_vector(6 downto 0); -- ?internal? carry
  CGOUT, CPOUT: out std_logic);
end sharma_8bit_logic;

architecture arch of sharma_8bit_logic is
begin
C(0) <= G(0) or (P(0) and CIN);

C(1) <= G(1) or (G(0) and P(1)) or (CIN and P(0)and P(1));

C(2) <= G(2) or (G(1) and P(2)) or (G(0) and P(1) and P(2)) or (CIN and P(0) and P(1) and P(2));

C(3) <= G(3) or (G(2) and P(3)) or
(G(1) and P(2) and P(3)) or (G(0) and P(1) and P(2) and P(3)) or
(CIN and P(0) and P(1) and P(2) and P(3)) ; --can think of it as a C(3), it's the last carry

C(4) <= G(4) or
(G(3) and P(4)) or
(G(2) and P(3) and P(4)) or
(G(1) and P(2) and P(3) and P(4)) or
(G(0) and P(1) and P(2) and P(3) and P(4)) or
(CIN and P(0)and P(1) and P(2) and P(3) and P(4));

C(5) <= G(5) or
(G(4) and P(5)) or
(G(3) and P(4) and P(5)) or
(G(2) and P(3) and P(4) and P(5)) or
(G(1) and P(2) and P(3) and P(4) and P(5)) or
(G(0) and P(1)and P(2) and P(3) and P(4) and P(5)) or
(CIN and P(0)and P(1) and P(2) and P(3) and P(4) and P(5));

C(6) <= G(6) or
(G(5) and P(6)) or
(G(4) and P(5) and P(6)) or
(G(3) and P(4) and P(5) and P(6)) or
(G(2) and P(3) and P(4) and P(5) and P(6)) or
(G(1) and P(2) and P(3) and P(4) and P(5) and P(6)) or
(G(0) and P(1)and P(2) and P(3) and P(4) and P(5) and P(6)) or
(CIN and P(0)and P(1) and P(2) and P(3) and P(4) and P(5) and P(6));

CGOUT<= G(7) or
(G(6) and P(7)) or
(G(5) and P(6) and P(7)) or
(G(4) and P(5) and P(6) and P(7)) or
(G(3) and P(4) and P(5) and P(6) and P(7)) or
(G(2) and P(3) and P(4) and P(5) and P(6) and P(7)) or
(G(1) and P(2) and P(3) and P(4) and P(5) and P(6) and P(7)) or
(G(0) and P(1) and P(2) and P(3) and P(4) and P(5) and P(6) and P(7)) or
(CIN and P(0)and P(1) and P(2) and P(3) and P(4) and P(5) and P(6) and P(7));

CPOUT<= (P(7) and P(6) and P(5) and P(4)and P(3) and P(2) and P(1) and P(0));
end arch;