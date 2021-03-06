LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FFSR IS PORT(
PRE, CLR, CLK, S, R: IN STD_LOGIC;
Q, NQ: OUT STD_LOGIC;
QT: INOUT STD_LOGIC
);
END ENTITY;

ARCHITECTURE A_FFSR OF FFSR IS BEGIN
	PROCESS (CLR, CLK, PRE, S, R) BEGIN
		
		IF (CLR='0') THEN
			QT <= '0';
			--Q <= '0';
			--NQ <= '1';
		ELSIF (CLK'EVENT AND CLK='1') THEN
			IF (PRE='1') THEN
				QT <= '1';
				--Q <= '1';
				--NQ <= '0';
			ELSIF (S='0' AND R='0') THEN
				QT <= QT;
			ELSIF (S='1' AND R='1') THEN
				QT <= '-'; -- NO PERMITIDO
			ELSIF (S='0' AND R='1') THEN
				QT <= '0';
			ELSE
				QT <= '1';
			END IF;
		END IF;
	END PROCESS;

	Q <= QT;
	NQ <= NOT QT;
END A_FFSR;
