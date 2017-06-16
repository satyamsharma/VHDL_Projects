library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity sharma_SRAM_chip is
    port(
        INPUT_ADDR: in std_logic_vector(7 downto 0);
		  INPUT_DATA: in std_logic_vector(7 downto 0);
		  
		  INPUT_WE: in std_logic;
		          
        SRAM_ADDR: out std_logic_vector(17 downto 0);
        SRAM_DQ: inout std_logic_vector(15 downto 0);
		  
        SRAM_CE_N: out std_logic;
        SRAM_OE_N: out std_logic;
        SRAM_WE_N: out std_logic;
        SRAM_UB_N: out std_logic;
        SRAM_LB_N: out std_logic;
		  
		  SEGMENT0_DATA_OUT: out std_logic_vector(3 downto 0);
		  SEGMENT1_DATA_OUT: out std_logic_vector(3 downto 0)
		  
    );
end sharma_SRAM_chip;


architecture inside_sharma_SRAM_chip of sharma_SRAM_chip is

    signal address: std_logic_vector(7 downto 0);
    signal data: std_logic_vector(7 downto 0);
    signal Wenable: std_logic;
	 
	 shared variable first : std_logic := '1';
    
begin
	 
	 process (address, data, Wenable)
	 begin
	 
		if(first = '1') then
		
		SRAM_WE_N <= '0';
		SRAM_CE_N <= '0';
		SRAM_OE_N <= '0';
		SRAM_UB_N <= '0';
		SRAM_LB_N <= '0';
		
		
			for I in 0 to 128 loop
				SRAM_ADDR(17 downto 0) <= std_logic_vector(to_unsigned(I, SRAM_ADDR'length)); --std_logic_vector(to_unsigned(input_1, output_1a'length));
				SRAM_DQ(15 downto 0) <= "0000000000000000";
			end loop;
			--first <= '0';

		end if;
		
	 Wenable <= INPUT_WE;
    address <= INPUT_ADDR;
	 
	 if (Wenable = '1') then
    data <= INPUT_DATA;--INPUT_DATA when Wenable = '1' else (others => 'Z' );
	 else
	 data <= (others => 'Z' );
	 end if;
	 
    SRAM_WE_N <= not Wenable;
    SRAM_CE_N <= '0';
    SRAM_OE_N <= '0';
    SRAM_UB_N <= '0';
    SRAM_LB_N <= '0';
    
    SRAM_ADDR(17 downto 8) <= (others => '0');
    SRAM_ADDR(7 downto 0) <= address;
    
    SRAM_DQ(15 downto 8) <= (others => '0');
    SRAM_DQ(7 downto 0) <= data;
	 
	 SEGMENT0_DATA_OUT(3 downto 0) <= SRAM_DQ(3 downto 0);
	 SEGMENT1_DATA_OUT(3 downto 0) <= SRAM_DQ(7 downto 4);
    
					
	 	 end process;

end inside_sharma_SRAM_chip;