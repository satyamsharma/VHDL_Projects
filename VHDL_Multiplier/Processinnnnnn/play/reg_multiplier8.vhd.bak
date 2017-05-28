library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity clockedmultiplier8 is
port(
clock: in std_logic;
A, B: in std_logic_vector(7 downto 0);
reset: in std_logic;
Q: out std_logic_vector(15 downto 0)
);
end entity;

architecture arch of clockedmultiplier8 is

component multiplier8 
port (a_in,b_in : in std_logic_vector (7 downto 0);
      p : out std_logic_vector (15 downto 0));
END component;

signal internalA, internalB: std_logic_vector(7 downto 0) := "00000000";
signal internalout: std_logic_vector(15 downto 0) := "0000000000000000";
signal extout: std_logic_vector(15 downto 0) := "0000000000000000";

begin
Multiply: multiplier8 port map(a_in => internalA, b_in => internalB, p => internalout);

	Process(clock, reset)
	begin
		if (reset = '1') then
			extout <= "0000000000000000";
			internalA <= "00000000";
			internalB <= "00000000";
		elsif ((clock'event) and (clock = '1')) then
			internalA <= A;
			internalB <= B;
			extout <= internalout;
		end if;
	end process;
	Q <= extout;
end arch;