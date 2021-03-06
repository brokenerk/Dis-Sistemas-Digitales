LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FFT IS PORT(
PRE, CLR, CLK, T: IN STD_LOGIC;
Q, NQ: OUT STD_LOGIC;
QT: INOUT STD_LOGIC
);
END ENTITY;

ARCHITECTURE A_FFT OF FFT IS BEGIN
	PROCESS (CLR, CLK, PRE, T) BEGIN
		
		IF (CLR='0') THEN
			QT <= '0';
			--Q <= '0';
			--NQ <= '1';
		ELSIF (CLK'EVENT AND CLK='1') THEN
			IF (PRE='1') THEN
				QT <= '1';
				--Q <= '1';
				--NQ <= '0';
			ELSIF (T='0') THEN
				QT <= QT;
			ELSE
				QT <= NOT QT;
			END IF;
		END IF;
	END PROCESS;

	Q <= QT;
	NQ <= NOT QT;
END A_FFT;
