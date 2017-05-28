library ieee;
use ieee.std_logic_1164.all;

entity sharma_multiplier8 is
port (a_in,b_in : in std_logic_vector (7 downto 0);
      p : out std_logic_vector (15 downto 0));
end sharma_multiplier8;

architecture sharma_multiplier of sharma_multiplier8 is

component sharma_rca8 
    port(a, b : in std_logic_vector(7 downto 0);
         cout : out std_logic;
			sum : out std_logic_vector(7 downto 0));
end component;

signal andgate: std_logic_vector(63 downto 0);
signal sumout0 : std_logic_vector(7 downto 0);
signal sumout1 : std_logic_vector(7 downto 0);
signal sumout2 : std_logic_vector(7 downto 0);
signal sumout3 : std_logic_vector(7 downto 0);
signal sumout4 : std_logic_vector(7 downto 0);
signal sumout5 : std_logic_vector(7 downto 0);
signal sumout6 : std_logic_vector(7 downto 0);
signal carry: std_logic_vector(6 downto 0);

begin                           
    andgate(0) <= a_in(0) and b_in(0);
    andgate(1) <= a_in(1) and b_in(0);
    andgate(2) <= a_in(2) and b_in(0);
    andgate(3) <= a_in(3) and b_in(0);
    andgate(4) <= a_in(4) and b_in(0);
    andgate(5) <= a_in(5) and b_in(0);
    andgate(6) <= a_in(6) and b_in(0);
    andgate(7) <= a_in(7) and b_in(0);
	
    andgate(8) <= a_in(0) and b_in(1);
    andgate(9) <= a_in(1) and b_in(1);
    andgate(10) <= a_in(2) and b_in(1);
    andgate(11) <= a_in(3) and b_in(1);
    andgate(12) <= a_in(4) and b_in(1);
    andgate(13) <= a_in(5) and b_in(1);
    andgate(14) <= a_in(6) and b_in(1);
    andgate(15) <= a_in(7) and b_in(1);
	 
    andgate(16) <= a_in(0) and b_in(2);
    andgate(17) <= a_in(1) and b_in(2);
    andgate(18) <= a_in(2) and b_in(2);
    andgate(19) <= a_in(3) and b_in(2);
    andgate(20) <= a_in(4) and b_in(2);
    andgate(21) <= a_in(5) and b_in(2);
    andgate(22) <= a_in(6) and b_in(2);
    andgate(23) <= a_in(7) and b_in(2);
	 
    andgate(24) <= a_in(0) and b_in(3);
    andgate(25) <= a_in(1) and b_in(3);
    andgate(26) <= a_in(2) and b_in(3);
    andgate(27) <= a_in(3) and b_in(3);
    andgate(28) <= a_in(4) and b_in(3);
    andgate(29) <= a_in(5) and b_in(3);
    andgate(30) <= a_in(6) and b_in(3);
    andgate(31) <= a_in(7) and b_in(3);

    andgate(32) <= a_in(0) and b_in(4);
    andgate(33) <= a_in(1) and b_in(4);
    andgate(34) <= a_in(2) and b_in(4);
    andgate(35) <= a_in(3) and b_in(4);
    andgate(36) <= a_in(4) and b_in(4);
    andgate(37) <= a_in(5) and b_in(4);
    andgate(38) <= a_in(6) and b_in(4);
    andgate(39) <= a_in(7) and b_in(4);

    andgate(40) <= a_in(0) and b_in(5);
    andgate(41) <= a_in(1) and b_in(5);
    andgate(42) <= a_in(2) and b_in(5);
    andgate(43) <= a_in(3) and b_in(5);
    andgate(44) <= a_in(4) and b_in(5);
    andgate(45) <= a_in(5) and b_in(5);
    andgate(46) <= a_in(6) and b_in(5);
    andgate(47) <= a_in(7) and b_in(5);

    andgate(48) <= a_in(0) and b_in(6);
    andgate(49) <= a_in(1) and b_in(6);
    andgate(50) <= a_in(2) and b_in(6);
    andgate(51) <= a_in(3) and b_in(6);
    andgate(52) <= a_in(4) and b_in(6);
    andgate(53) <= a_in(5) and b_in(6);
    andgate(54) <= a_in(6) and b_in(6);
    andgate(55) <= a_in(7) and b_in(6);
	 
    andgate(56) <= a_in(0) and b_in(7);
    andgate(57) <= a_in(1) and b_in(7);
    andgate(58) <= a_in(2) and b_in(7);
    andgate(59) <= a_in(3) and b_in(7);
    andgate(60) <= a_in(4) and b_in(7);
    andgate(61) <= a_in(5) and b_in(7);
    andgate(62) <= a_in(6) and b_in(7);
    andgate(63) <= a_in(7) and b_in(7);

    --Gates
    sharma_rca80: sharma_rca8 port map(sum => sumout0, a(0) => andgate(1), a(1) => andgate(2), a(2) => andgate(3), a(3) => andgate(4), a(4) => andgate(5), a(5) => andgate(6), a(6) => andgate(7), a(7) => '0', b(0) => andgate(8), b(1) => andgate(9), b(2) => andgate(10), b(3) => andgate(11),b(4) => andgate(12),b(5) => andgate(13),b(6) => andgate(14),b(7) => andgate(15),cout => carry(0));
    sharma_rca81: sharma_rca8 port map(sum => sumout1, a(0) => sumout0(1), a(1) => sumout0(2), a(2) => sumout0(3), a(3) => sumout0(4), a(4) => sumout0(5), a(5) => sumout0(6), a(6) => sumout0(7), a(7) => carry(0), b(0) => andgate(16), b(1) => andgate(17), b(2) => andgate(18), b(3) => andgate(19), b(4) => andgate(20), b(5) => andgate(21), b(6) => andgate(22), b(7) => andgate(23), cout => carry(1));
    sharma_rca82: sharma_rca8 port map(sum => sumout2, a(0) => sumout1(1), a(1) => sumout1(2), a(2) => sumout1(3), a(3) => sumout1(4), a(4) => sumout1(5), a(5) => sumout1(6), a(6) => sumout1(7), a(7) => carry(1), b(0) => andgate(24), b(1) => andgate(25), b(2) => andgate(26), b(3) => andgate(27), b(4) => andgate(28), b(5) => andgate(29), b(6) => andgate(30), b(7) => andgate(31), cout => carry(2));
    sharma_rca83: sharma_rca8 port map(sum => sumout3, a(0) => sumout2(1), a(1) => sumout2(2), a(2) => sumout2(3), a(3) => sumout2(4), a(4) => sumout2(5), a(5) => sumout2(6), a(6) => sumout2(7), a(7) => carry(2), b(0) => andgate(32), b(1) => andgate(33), b(2) => andgate(34), b(3) => andgate(35), b(4) => andgate(36), b(5) => andgate(37), b(6) => andgate(38), b(7) => andgate(39), cout => carry(3));
    sharma_rca84: sharma_rca8 port map(sum => sumout4, a(0) => sumout3(1), a(1) => sumout3(2), a(2) => sumout3(3), a(3) => sumout3(4), a(4) => sumout3(5), a(5) => sumout3(6), a(6) => sumout3(7), a(7) => carry(3), b(0) => andgate(40), b(1) => andgate(41), b(2) => andgate(42), b(3) => andgate(43), b(4) => andgate(44), b(5) => andgate(45), b(6) => andgate(46), b(7) => andgate(47), cout => carry(4));
    sharma_rca85: sharma_rca8 port map(sum => sumout5, a(0) => sumout4(1), a(1) => sumout4(2), a(2) => sumout4(3), a(3) => sumout4(4), a(4) => sumout4(5), a(5) => sumout4(6), a(6) => sumout4(7), a(7) => carry(4), b(0) => andgate(48), b(1) => andgate(49), b(2) => andgate(50), b(3) => andgate(51), b(4) => andgate(52), b(5) => andgate(53), b(6) => andgate(54), b(7) => andgate(55), cout => carry(5));
    sharma_rca86: sharma_rca8 port map(sum => sumout6, a(0) => sumout5(1), a(1) => sumout5(2), a(2) => sumout5(3), a(3) => sumout5(4), a(4) => sumout5(5), a(5) => sumout5(6), a(6) => sumout5(7), a(7) => carry(5), b(0) => andgate(56), b(1) => andgate(57), b(2) => andgate(58), b(3) => andgate(59), b(4) => andgate(60), b(5) => andgate(61), b(6) => andgate(62), b(7) => andgate(63), cout => carry(6));

    --Assigning p values
    p(0) <= andgate(0);
    p(1) <= sumout0(0);
    p(2) <= sumout1(0);
    p(3) <= sumout2(0);
    p(4) <= sumout3(0);
    p(5) <= sumout4(0);
    p(6) <= sumout5(0);
    p(7) <= sumout6(0);
	 p(8) <= sumout6(1);
    p(9) <= sumout6(2);
    p(10) <= sumout6(3);
    p(11) <= sumout6(4);
    p(12) <= sumout6(5);
    p(13) <= sumout6(6);
    p(14) <= sumout6(7);
    p(15) <= carry(6);

end sharma_multiplier;