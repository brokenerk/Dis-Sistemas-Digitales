LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SEC IS PORT(
	CLR,CLK: IN STD_LOGIC;
	ENTRADA: IN STD_LOGIC_VECTOR(5 DOWNTO 0); --110110
	DISPLAY: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
);
END ENTITY;

ARCHITECTURE A_SEC OF SEC IS
CONSTANT DIG0: STD_LOGIC_VECTOR(6 DOWNTO 0):="1000000";
CONSTANT DIG1: STD_LOGIC_VECTOR(6 DOWNTO 0):="1111001";

TYPE ESTADOS IS (A,B,C,D,E,F,G);
SHARED VARIABLE I: INTEGER:=0;
SIGNAL PRE: ESTADOS;
SIGNAL FUT: ESTADOS;

BEGIN

	REGISTRO: process(clk,clr, ENTRADA) begin
		if(clr='0') then 
			I:=5;
			PRE<=A;
		elsif(rising_edge(clk)) then 
			PRE<=FUT;
			IF I > 0 THEN
	                	I:=I-1;
	            	ELSE
	                	I:=5;
		            END IF;
		end if;
	end process REGISTRO;

	DIAGRAMA: PROCESS(ENTRADA, PRE) BEGIN
		CASE PRE IS
			WHEN A => DISPLAY<=DIG0;
				IF (ENTRADA(I)='1') THEN
					FUT<=B;
				ELSE 
					FUT<=A;
				END IF;

			WHEN B => DISPLAY<=DIG0;
				IF (ENTRADA(I)='1') THEN
					FUT<=C;
				ELSE 
					FUT<=A;
				END IF;

			WHEN C => DISPLAY<=DIG0;
				IF (ENTRADA(I)='0') THEN
					FUT<=D;
				ELSE 
					FUT<=C;
				END IF;

			WHEN D => DISPLAY<=DIG0;
				IF (ENTRADA(I)='1') THEN
					FUT<=E;
				ELSE 
					FUT<=D;
				END IF;

			WHEN E => DISPLAY<=DIG0;
				IF (ENTRADA(I)='1') THEN
					FUT<=F;
				ELSE 
					FUT<=A;
				END IF;

			WHEN F => DISPLAY<=DIG0;
				IF (ENTRADA(I)='0') THEN
					FUT<=G;
				ELSE 
					FUT<=F;
				END IF;
			
			WHEN G => 
				DISPLAY<=DIG1;
				FUT<=G;
		END CASE;
	END PROCESS DIAGRAMA;

END A_SEC;

