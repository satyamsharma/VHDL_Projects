library ieee;
  use ieee.std_logic_1164.all;
  entity sharma_bitshift_L is
  port(
    a: in std_logic_vector(4 downto 0);
    result: out std_logic_vector(4 downto 0)
  );
end sharma_bitshift_L;

architecture arch of sharma_bitshift_L is
  begin
    result <= to_stdlogicvector(to_bitvector(a) sll 1);
end arch;