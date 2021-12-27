-- Quartus II VHDL Template
-- Alphabet
-- Tamsin Rogers
-- 9/21/20
-- CS232 Project2

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alph is  

	port 
	(
		a: in UNSIGNED(4 downto 0);
		result: out UNSIGNED(6 downto 0)
	);

end entity;

architecture rtl of alph is
begin

	result(0) <= '1' when a="00001" or a="00011" or a="00111" or a="01000" or a="01001" or a="01010" or a="01011" or a="01101" or a="10100" or a="10101" or a="10110" or a="10111" or a="11000"
	else '0';	
							 
	result(1) <= '1' when a="00001" or a="00010" or a="00100" or a="00101" or a="01000" or a="01010" or a="01011" or a="01100" or a="01101" or a="10010" or a="10011" or a="10101"
	else '0';	
	
	result(2) <= '1' when a="00010" or a="00100" or a="00101" or a="01000" or a="01010" or a="01011" or a="01111" or a="10011" or a="10110" or a="11001"
	else '0';	
	
	result(3) <= '1' when a="00000" or a="00101" or a="00111" or a="01000" or a="01010" or a="01100" or a="01101" or a="01111" or a="10000" or a="10001" or a="10011" or a="10111" or a="11000"
	else '0';							
	
	result(4) <= '1' when a="00110" or a="10000" or a="10010" or a="10110" or a="11000"
	else '0';				
	
	result(5) <= '1' when a="00011" or a="01001" or a="01100" or a="01101" or a="10101" or a="11001"
	else '0';			
	
	result(6) <= '1' when a="00010" or a="01000" or a="01001" or a="01011" or a="01100" or a="01110" or a="10011" or a="10100" or a="10101" or a="10110"
	else '0';	

end rtl;