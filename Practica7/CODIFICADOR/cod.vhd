library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity cod is 
	port( i: in std_logic_vector (7 downto 0);
		  c: out std_logic_vector (2 downto 0));
end entity;
architecture A_cod of cod is begin
	cod: process(i,c) begin
		if (i(0)='1') then
			c <= "000";
		elsif (i(1)='1') then
			c <= "001";
		elsif (i(2)='1') then
			c <= "010";
		elsif (i(3)='1') then
			c <= "011";
		elsif (i(4)='1') then
			c <= "100";
		elsif (i(5)='1') then
			c <= "101";
		elsif (i(6)='1') then
			c <= "110";
		elsif (i(7)='1') then
			c <= "111";
		else
			c <= "001"; --Retener 
		end if;
	end process cod;
end A_cod;
