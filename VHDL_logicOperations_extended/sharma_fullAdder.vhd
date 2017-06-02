Library ieee;
use ieee.std_logic_1164.all;

entity sharma_fullAdder is 
port (
  a, b : in std_logic; 
  cin : in std_logic; 
  cout : out std_logic; 
  sum : out std_logic); 
 end sharma_fullAdder; 
  
  architecture arch of sharma_fullAdder is
   begin 
   cout <= (a and b) or (a and cin) or (b and cin); 
   sum <= a xor b xor cin; 
   end arch; 
   
   