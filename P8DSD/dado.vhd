library ieee;
use ieee.std_logic_1164.all;

entity DADO is
port( 
	CLK, C, CLR: in std_logic ;
	D: OUT std_logic_vector (0 TO 6));
	ATTRIBUTE PIN_NUMBERS OF DADO: ENTITY IS
	"CLK:1 CLR:3 C:2 D(0):15 D(1):14 D(2):22 D(3):19 D(4):17 D(5):20 D(6):18";
end entity;

architecture A_DADO of DADO is
SIGNAL J, K, Q: STD_LOGIC_VECTOR(2 DOWNTO 0):="000";
begin

JK: PROCESS(C, Q) BEGIN
	J(0) <= C;
	K(0) <= C;

	J(1) <= C AND Q(0);
	K(1) <= C AND (Q(0) OR Q(2));

	J(2) <= C AND Q(0) AND Q(1);
	K(2) <= C AND Q(1);
END PROCESS JK;


DADO: PROCESS (CLK, C, CLR, J, K) BEGIN
	IF (CLR='0') THEN
		Q <= "000";
	ELSIF (CLK'EVENT AND CLK='1') THEN
		CASE C IS
			WHEN '0' => Q <= Q;
			WHEN OTHERS =>
				FOR I IN 0 TO 2 LOOP
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
END PROCESS DADO;

BCD: PROCESS(Q) BEGIN
	CASE Q IS
		WHEN "001" => D <= "1001111";
		WHEN "010" => D <= "0010010";
		WHEN "011" => D <= "0000110";
		WHEN "100" => D <= "1001100";
		WHEN "101" => D <= "0100100";
		WHEN "110" => D <= "0100000";
		WHEN OTHERS => D <= "1111111";
	END CASE;
END PROCESS BCD;

end A_DADO;

