library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity contador is

port( 
	CLR: in std_logic ;
	CLK: in std_logic ;
	C: in std_logic ;
	Q: INOUT std_logic_vector ( 9 DOWNTO 0 ) );

end;

architecture a_contador of contador is
SIGNAL J, K: STD_LOGIC_VECTOR(9 DOWNTO 0);
begin

JK: PROCESS(C) BEGIN
	FOR I IN 0 TO 9 LOOP
		IF(I=0) THEN
			J(I) <= C;
			K(I) <= J(I);
		ELSE 
			J(I) <= J(I-1) AND Q(I-1);
			K(I) <= J(I);
		END IF;
	END LOOP;
END PROCESS JK;


CONTADOR: PROCESS (CLR, CLK, C) BEGIN
	IF (CLR='0') THEN
		Q <= "0000000000";
	ELSIF (CLK'EVENT AND CLK='1') THEN
		CASE C IS
			WHEN '0' => Q <= Q;
			WHEN OTHERS =>
				FOR I IN 0 TO 9 LOOP
					IF (J(I)='0' AND K(I)='0') THEN
						Q(I) <= Q(I);
					ELSIF (J(I)='1' AND K(I)='1') THEN
						Q(I) <= NOT Q(I);
					ELSIF (J(I)='0' AND K(I)='1') THEN
						Q(I) <= '0';
					ELSE
						Q(I) <= '1';
					END IF;
				END LOOP;
		END CASE;
	END IF;
END PROCESS CONTADOR;

end a_contador;
