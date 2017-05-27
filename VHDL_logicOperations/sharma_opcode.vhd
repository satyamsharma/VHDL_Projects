library ieee;
use ieee.std_logic_1164.all;

--declaring all the port, basically the input and output structure of the circuit
entity sharma_opcode is
port( a,b       : in std_logic_vector(5 downto 0);
      start     : in std_logic;
      opcode    : in std_logic_vector(2 downto 0);
      result    : out std_logic_vector(5 downto 0) 
    );
end sharma_opcode;

architecture arch of sharma_opcode is

--initializing the signals
signal in1, in2, out1: std_logic_vector(5 downto 0);

--initializing all the cases
begin
  in1 <= a;
  in2 <= b;
  result <= out1;

process(start)
begin
       
  if( start = '1') then

    case opcode is 
      
      --for AND case
      when "000" =>
        out1 <= in1 and in2;
       
      --for OR case
      when "001" =>
       out1 <= in1 or in2;
       
      --for XOR case
      when "010" =>
       out1 <= in1 xor in2;
        
      --for NOT case
      when "011" =>
        out1 <= not(in1);
        
      --for Left Shift case
      when "100" =>
        out1 <= to_stdlogicvector(to_bitvector(in1) sll 1);
        
      --for Right Shift case
      when "101" =>
        out1 <= to_stdlogicvector(to_bitvector(in1) srl 1);
        
      --for Left Rotation case
      when "110" =>
        out1 <= to_stdlogicvector(to_bitvector(in1) rol 1);
        
      --for Right Rotation case
      when "111" => 
      out1 <= to_stdlogicvector(to_bitvector(in1) ror 1);
      
      when others =>
        --NULL;
        
    end case;
  end if;
  
end process;
end arch;