Library ieee;
use ieee.std_logic_1164.all;
  entity sharma_bitwiseAnd is
  port(
      a,b: in std_logic_vector(2 downto 0);
      result: out std_logic_vector(2 downto 0)
        );
end sharma_bitwiseAnd;

architecture arch of sharma_bitwiseAnd is
  begin
    result <= a and b;
end arch;
