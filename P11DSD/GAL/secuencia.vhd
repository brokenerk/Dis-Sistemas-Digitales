LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

ENTITY SEC IS PORT(
	CLR, CLK: IN STD_LOGIC;
	ENT: INOUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	DISPLAY: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
);
END ENTITY;

ARCHITECTURE A_SEC OF SEC IS
CONSTANT DIG0: STD_LOGIC_VECTOR(6 DOWNTO 0):="1000000";
CONSTANT DIG1: STD_LOGIC_VECTOR(6 DOWNTO 0):="1111001";

TYPE ESTADOS IS (A,B,C,D,E,F,G, MUERTO);
SIGNAL PRE: ESTADOS:=A;
SIGNAL FUT: ESTADOS;
SIGNAL SALIDAE: STD_LOGIC_VECTOR(5 DOWNTO 0);

BEGIN
	DIAGRAMA: PROCESS(SALIDAE, PRE, CLR) BEGIN
		IF(CLR='0') THEN
			FUT<=A;
			PRE<=A;
			SALIDAE<="000000";
		ELSE
			CASE PRE IS
				WHEN A => DISPLAY <= DIG0;
					IF (SALIDAE(0)='1') THEN
						FUT<=B;
					ELSE
						FUT<=MUERTO;
					END IF;
				WHEN B => DISPLAY <=DIG0;
					IF (SALIDAE(0)='1') THEN
						FUT<=C;
					ELSE
						FUT<=MUERTO;
					END IF;
				WHEN C => DISPLAY <=DIG0;
					IF (SALIDAE(0)='0') THEN
						FUT<=D;
					ELSE
						FUT<=MUERTO;
					END IF;
				WHEN D => DISPLAY <=DIG0;
					IF (SALIDAE(0)='1') THEN
						FUT<=E;
					ELSE
						FUT<=MUERTO;
					END IF;
				WHEN E => DISPLAY <=DIG0;
					IF (SALIDAE(0)='1') THEN
						FUT<=F;
					ELSE
						FUT<=MUERTO;
					END IF;
				WHEN F => 
					IF (SALIDAE(0)='0') THEN
						DISPLAY <=DIG1;
						FUT<=A;
					ELSE
						FUT<=MUERTO;
					END IF;
				WHEN MUERTO => DISPLAY<=DIG0;
				WHEN OTHERS => DISPLAY<=DIG0;
			END CASE;
		END IF;
	END PROCESS DIAGRAMA;


	REGISTRO: process(clk,clr) begin
		if(clr='0') then 
			SALIDAE<=(others =>'0');
		elsif(rising_edge(clk)) then 
			SALIDAE<=ENT;
			PRE<=FUT;
			SALIDAE<= to_stdlogicvector(to_bitvector(SALIDAE)srl 1);
			FUT<=PRE;
		end if;
	end process REGISTRO;
END A_SEC;
