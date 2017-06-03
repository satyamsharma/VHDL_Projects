library IEEE;
use IEEE.std_logic_1164.all;
use work.lee_comp_pkg.all;


entity cla8 is -- 8-bit CLA top level entity
  port( a, b: in std_logic_vector(7 downto 0);
  carryin: in std_logic;
  sum: out std_logic_vector(7 downto 0);
  cgout, cpout, overflow: out std_logic);
end cla8;

architecture arch of cla8 is
component full_adder_g_p -- component declaration of cla one bit full adder
  port( a, b, cin: in std_logic;
  sum, cg, cp: out std_logic);
end component;

component cla8_logic -- component declaration
  port( g, p: in std_logic_vector(7 downto 0);
    cin: in std_logic;
    c: out std_logic_vector(6 downto 0);
    cgout, cpout: out std_logic);
end component;

signal cg, cp, carry: std_logic_vector(7 downto 0); --local signals
signal cout: std_logic;

begin
  carry(0) <= carryin;
  ADD0:
    full_adder_g_p
    port map (a(0), b(0), carry(0), sum(0), cg(0), cp(0));
  ADD1:
    full_adder_g_p
    port map (a(1), b(1), carry(1), sum(1), cg(1), cp(1));
  ADD2:
    full_adder_g_p
    port map (a(2), b(2), carry(2), sum(2), cg(2), cp(2));
  ADD3:
    full_adder_g_p
    port map (a(3), b(3), carry(3), sum(3), cg(3), cp(3));
  ADD4:
    full_adder_g_p
    port map (a(4), b(4), carry(4), sum(4), cg(4), cp(4));
  ADD5:
    full_adder_g_p
    port map (a(5), b(5), carry(5), sum(5), cg(5), cp(5));
  ADD6:
    full_adder_g_p
    port map (a(6), b(6), carry(6), sum(6), cg(6), cp(6));
  ADD7:
    full_adder_g_p
    port map (a(7), b(7), carry(7), sum(7), cg(7), cp(7));
  CLA:
      cla8_logic
          port map(cg, cp, carryin, carry(7 downto 1), cout, cpout);
    
  cgout <= cout;
  overflow <= carry(7) xor cout;

end arch;