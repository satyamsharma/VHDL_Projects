library ieee; 
use ieee.std_logic_1164.all; 
entity sharma_eightBitAddSub is port(
a, b : in std_logic_vector(7 downto 0);
subtract : in std_logic;
cin : in std_logic;
cout : out std_logic;
overflow : out std_logic;
sum : out std_logic_vector(7 downto 0));
end sharma_eightBitAddSub;
   
architecture arch of sharma_eightBitAddSub is
component sharma_fullAdder is
  port(
  --inputs a, b, and cin
  a, b, cin: in std_logic; 
  
  --carry out
  cout : out std_logic;
  
  --the result
  sum : out std_logic
 ); 
  end component; 
  
  --basic multiplexer for selecting
  component sharma_mux2to1_eight 
    port(
    a, b: in std_logic_vector(7 downto 0); 
    sel: in std_logic; 
    y: out std_logic_vector(7 downto 0)); 
  end component; 
  
  
  signal c: std_logic_vector(7 downto 0); 
  signal b_not: std_logic_vector(7 downto 0); 
  signal b_actual: std_logic_vector(7 downto 0); 
  signal lastcarry : std_logic;
  
  begin 
  
  b_not <= not b; 
  
  MUX_SUB:  sharma_mux2to1_eight port map (b, b_not, subtract, b_actual); 
    
  c(0) <= subtract or cin;
  sharma_fullAdder0 : sharma_fullAdder port map(a=>a(0), b=>b_actual(0), cin=>c(0), cout=>c(1), sum=>sum(0));
  sharma_fullAdder1 : sharma_fullAdder port map(a=>a(1), b=>b_actual(1), cin=>c(1), cout=>c(2), sum=>sum(1));
  sharma_fullAdder2 : sharma_fullAdder port map(a=>a(2), b=>b_actual(2), cin=>c(2), cout=>c(3), sum=>sum(2));
  sharma_fullAdder3 : sharma_fullAdder port map(a=>a(3), b=>b_actual(3), cin=>c(3), cout=>c(4), sum=>sum(3));
  sharma_fullAdder4 : sharma_fullAdder port map(a=>a(4), b=>b_actual(4), cin=>c(4), cout=>c(5), sum=>sum(4));
  sharma_fullAdder5 : sharma_fullAdder port map(a=>a(5), b=>b_actual(5), cin=>c(5), cout=>c(6), sum=>sum(5));
  sharma_fullAdder6 : sharma_fullAdder port map(a=>a(6), b=>b_actual(6), cin=>c(6), cout=>c(7), sum=>sum(6));
  sharma_fullAdder7 : sharma_fullAdder port map(a=>a(7), b=>b_actual(7), cin=>c(7), cout=>lastcarry, sum=>sum(7));
    
  cout <= lastcarry; 
  overflow <= c(7) xor lastcarry;

 
end arch;
