LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DISPLAYS IS PORT(
R: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
DR: OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
);
ATTRIBUTE PIN_NUMBERS OF DISPLAYS: ENTITY IS
"R(1):1 R(0):2 DR(0):20 DR(1):19 DR(2):18 DR(3):17 DR(4):16 DR(5):15 DR(6):14";
END ENTITY;

ARCHITECTURE A_DISPLAYS OF DISPLAYS IS 
BEGIN

DECO_R: PROCESS (R) BEGIN
	IF (R="00") THEN DR <= "0111111";
	ELSIF (R="01") THEN DR <= "0000110";
	ELSIF (R="10") THEN DR <= "1011011";
	ELSE DR <= "1001111";
	END IF;
END PROCESS DECO_R;


END A_DISPLAYS;
