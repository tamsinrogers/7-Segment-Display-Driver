-- Quartus II VHDL Template
-- Unsigned Subtracter
-- Tamsin Rogers
-- 9/21/20
-- CS232 Project2

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sub is  

	port 
	(
		start: inout boolean;
		a: in UNSIGNED(3 downto 0);			-- input a
		b: in UNSIGNED(3 downto 0);			-- input b
		c: inout UNSIGNED(4 downto 0);		-- sum output
		result0: out UNSIGNED(6 downto 0);	-- index 0 digit
		result1: out UNSIGNED(6 downto 0)	-- index 1 digit
	);

end entity;

architecture rtl of sub is
begin

	c <= "00000" when start = false
			else ('0' & b) - ('0' & a);		-- subtract a from b, giving a 5 bit result
	
	result0(0) <= '1' when c="00100" or c="01011" or c="01110" or c="10101" or c="11000" or c="11111"
								else '0';	
	
	result0(1) <= '1' when c="00101" or c="00110" or c="01111" or c="10000" or c="11010"
							  else '0';			  
	
	result0(2) <= '1' when c="00010" or c="01100" or c="10110"
							  else '0';	
	
	result0(3) <= '1' when c="00100" or c="00111" or c="01001" or c="01011" or c="01110" or c="10001" or c="10011" or c="10101" or c="11000" or c="11011" or c="11101" or c="11111"
							  else '0';									
	
	result0(4) <= '1' when c="00001" or c="00011" or c="00100" or c="00101" or c="00111" or c="01001" or c="01011" or c="01101" or c="01110" or c="01111" or c="10001" or c="10011" 
								or c="10101" or c="10111" or c="11000" or c="11001" or c="11011" or c="11101" or c="11111"
							  else '0';	
	
	result0(5) <= '1' when c="00001" or c="00010" or c="00011" or c="00111" or c="01011" or c="01100" or c="01101" or c="10001" or c="10101" or c="10110" or c="10111" or c="11011" or c="11111"
							  else '0';	

	result0(6) <= '1' when c="00000" or c="00001" or c="00111" or c="01010" or c="01011" or c="10001" or c="10100" or c="10101" or c="11011" or c="11110" or c="11111"
							  else '0';	
	
	result1(0) <= '1' when c="01010" or c="01011" or c="01100" or c="01101" or c="01110" or c="01111" or c="10000" or c="10001" or c="10010" or c="10011"
							  else '0';

	result1(1) <= '0';
	
	
	result1(2) <= '1' when c="10100" or c="10101" or c="10110" or c="10111" or c="11000" or c="11001" or c="11010" or c="11011" or c="11100" or c="11101"
							  else '0';
	
	result1(3) <= '1' when c="01010" or c="01011" or c="01100" or c="01101" or c="01110" or c="01111" or c="10000" or c="10001" or c="10010" or c="10011"
							  else '0';
	
	result1(4) <= '1' when c="01010" or c="01011" or c="01100" or c="01101" or c="01110" or c="01111" or c="10000" or c="10001" or c="10010" or c="10011" or c="11110" or c="11111"
							  else '0';
	
	result1(5) <= '1' when c="01010" or c="01011" or c="01100" or c="01101" or c="01110" or c="01111" or c="10000" or c="10001" or c="10010" or c="10011"
								or c="10100" or c="10101" or c="10110" or c="10111" or c="11000" or c="11001" or c="11010" or c="11011" or c="11100" or c="11101" or c="11110" or c="11111"
							  else '0';
	
	result1(6) <= '1' when c="00000" or c="00001" or c="00010" or c="00011" or c="00100" or c="00101" or c="00110" or c="00111" or c="01000" or c="01001"
								or c="01010" or c="01011" or c="01100" or c="01101" or c="01110" or c="01111" or c="10000" or c="10001" or c="10010" or c="10011"
							  else '0';

end rtl;