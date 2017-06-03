library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sharma_16bit_addsub_buffer is
	port 
	(
		i : in std_logic_vector(15 downto 0);
		cin, sel, we  : in std_logic;
		sum : out std_logic_vector(15 downto 0);
		overflow, negative, zero : out std_logic
	);
end sharma_16bit_addsub_buffer;

architecture arch of sharma_16bit_addsub_buffer is
component sharma_16bit_addsub -- component declaration
	port 
	(
		a, b : in std_logic_vector(15 downto 0);
		cin : in std_logic;
		sum : out std_logic_vector(15 downto 0);
		overflow, negative, zero : out std_logic
	);
end component; 

	signal a, b : std_logic_vector(15 downto 0);
	
	begin
	
	process(sel, we)
	begin
		if rising_edge(we) then
			if sel = '0' then
				a <= i;
			else
				b <= i;
			end if;
		end if;
	end process;

	addsub_16bit : sharma_16bit_addsub port map(a, b, cin, sum, overflow, negative, zero);
	
end arch; 