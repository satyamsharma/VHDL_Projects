library  ieee;
use  ieee.std_logic_1164.all;

-- half_adder.vhdl
-- desc: 1bit half adder from scratch

entity sharma_halfAdder is
  port(A,   B:     in  std_logic;
       SUM, CARRY: out std_logic);
end sharma_halfAdder;

architecture DATAFLOW of sharma_halfAdder is
begin
    SUM   <= A xor B;
    CARRY <= A and B;
end DATAFLOW;
