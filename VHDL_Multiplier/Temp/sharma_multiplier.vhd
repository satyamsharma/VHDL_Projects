library ieee;
use ieee.std_logic_1164.all;

entity sharma_multiplier is
port (a_in,b_in : in std_logic_vector (3 downto 0);
      p : out std_logic_vector (7 downto 0));
end sharma_multiplier;

architecture sharma_multiplieriplier of sharma_multiplier is

component sharma_fullAdder 
    port(a,b,cin: in std_logic;
         cout,sum: out std_logic);
end component;

signal andgate: std_logic_vector(15 downto 0);
signal sumout: std_logic_vector(11 downto 0);
signal carry: std_logic_vector(11 downto 0);

begin                           
    andgate(0) <= a_in(0) and b_in(0);
    andgate(1) <= a_in(1) and b_in(0);
    andgate(2) <= a_in(2) and b_in(0);
    andgate(3) <= a_in(3) and b_in(0);

    andgate(4) <= a_in(0) and b_in(1);
    andgate(5) <= a_in(1) and b_in(1);
    andgate(6) <= a_in(2) and b_in(1);
    andgate(7) <= a_in(3) and b_in(1);

    andgate(8) <= a_in(0) and b_in(2);
    andgate(9) <= a_in(1) and b_in(2);
    andgate(10) <= a_in(2) and b_in(2);
    andgate(11) <= a_in(3) and b_in(2);

    andgate(12) <= a_in(0) and b_in(3);
    andgate(13) <= a_in(1) and b_in(3);
    andgate(14) <= a_in(2) and b_in(3);
    andgate(15) <= a_in(3) and b_in(3);

    --Gates
    sharma_fullAdder0: sharma_fullAdder port map(sum => sumout(0), a => andgate(1), b => andgate(4), cout => carry(0), cin => '0');
    sharma_fullAdder1: sharma_fullAdder port map(sum => sumout(1), a => andgate(2), b => andgate(5), cout => carry(1), cin => carry(0));
    sharma_fullAdder2: sharma_fullAdder port map(sum => sumout(2), a => andgate(3), b => andgate(6), cout => carry(2), cin => carry(1));
    sharma_fullAdder3: sharma_fullAdder port map(sum => sumout(3), a => '0', b => andgate(7), cout => carry(3), cin => carry(2));
    sharma_fullAdder4: sharma_fullAdder port map(sum => sumout(4), a => sumout(1), b => andgate(8), cout => carry(4), cin => '0');
    sharma_fullAdder5: sharma_fullAdder port map(sum => sumout(5), a => sumout(2), b => andgate(9), cout => carry(5), cin => carry(4));
    sharma_fullAdder6: sharma_fullAdder port map(sum => sumout(6), a => sumout(3), b => andgate(10), cout => carry(6), cin => carry(5));
    sharma_fullAdder7: sharma_fullAdder port map(sum => sumout(7), a => carry(3), b => andgate(11), cout => carry(7), cin => carry(6));
    sharma_fullAdder8: sharma_fullAdder port map(sum => sumout(8), a => sumout(5), b => andgate(12), cout => carry(8), cin => '0');
    sharma_fullAdder9: sharma_fullAdder port map(sum => sumout(9), a => sumout(6), b => andgate(13), cout => carry(9), cin => carry(8));
    sharma_fullAdder10: sharma_fullAdder port map(sum => sumout(10), a => sumout(7), b => andgate(14), cout => carry(10), cin => carry(9));
    sharma_fullAdder11: sharma_fullAdder port map(sum => sumout(11), a => carry(7), b => andgate(15), cout => carry(11), cin => carry(10));

    --Assigning p values
    p(0) <= andgate(0);
    p(1) <= sumout(0);
    p(2) <= sumout(4);
    p(3) <= sumout(8);
    p(4) <= sumout(9);
    p(5) <= sumout(10);
    p(6) <= sumout(11);
    p(7) <= carry(11);

end sharma_multiplieriplier;