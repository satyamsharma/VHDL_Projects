library IEEE;
use IEEE.std_logic_1164.all;

entity sharma_8bitAddSub is
  port(a, b: in std_logic_vector(7 downto 0);
  cin: in std_logic;
  subtract: in std_logic;
  sum: out std_logic_vector(7 downto 0);
  cout: out std_logic;
  overflow: out std_logic);
end sharma_8bitAddSub;

architecture sharma_8bitAddSub_arch of sharma_8bitAddSub is
component mux2to1_8
  port(
  a, b: in std_logic_vector(7 downto 0);
  sel: in std_logic;
  y: out std_logic_vector(7 downto 0));
end component;

component cla8
  port( a, b: in std_logic_vector(7 downto 0);
  carryin: in std_logic;
  sum: out std_logic_vector(7 downto 0);
  cgout, cpout, overflow: out std_logic);
end component;

signal carry: std_logic;
signal b_not: std_logic_vector(7 downto 0);
signal b_actual: std_logic_vector(7 downto 0);
begin
b_not <= not b;
carry <= cin;
MUX_SUB:
  mux2to1_8
  port map (b, b_not, subtract, b_actual);
ADD0:
  cla8
  port map (a, b_actual, carry, sum, cout, open, overflow);
end sharma_8bitAddSub_arch;