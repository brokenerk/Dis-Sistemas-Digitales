LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY TM IS PORT(
	F: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	CLK, CLR: IN STD_LOGIC;
	C: INOUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	DISPLAY: INOUT STD_LOGIC_VECTOR(6 DOWNTO 0)
);
END ENTITY TM;

ARCHITECTURE A_TM OF TM IS
	CONSTANT DIG0 : STD_LOGIC_VECTOR(6 DOWNTO 0):= "1000000";-- g f e d c b a
	CONSTANT DIG1 : STD_LOGIC_VECTOR(6 DOWNTO 0):= "1111001";
	CONSTANT DIG2 : STD_LOGIC_VECTOR(6 DOWNTO 0):= "0100100";  
	CONSTANT DIG3 : STD_LOGIC_VECTOR(6 DOWNTO 0):= "0110000";
	CONSTANT DIG4 : STD_LOGIC_VECTOR(6 DOWNTO 0):= "0011001";
	CONSTANT DIG5 : STD_LOGIC_VECTOR(6 DOWNTO 0):= "0010010";
	CONSTANT DIG6 : STD_LOGIC_VECTOR(6 DOWNTO 0):= "0000010";
	CONSTANT DIG7 : STD_LOGIC_VECTOR(6 DOWNTO 0):= "1111000";
	CONSTANT DIG8 : STD_LOGIC_VECTOR(6 DOWNTO 0):= "0000000";
	CONSTANT DIG9 : STD_LOGIC_VECTOR(6 DOWNTO 0):= "0010000";
	CONSTANT GATO : STD_LOGIC_VECTOR(6 DOWNTO 0):= "0001001";
	CONSTANT AST : STD_LOGIC_VECTOR(6 DOWNTO 0):= "0001000";
	CONSTANT NOTECLA : STD_LOGIC_VECTOR(6 DOWNTO 0):= "1111111";
	SIGNAL TECLA: STD_LOGIC_VECTOR(6 DOWNTO 0);

	BEGIN

	CA: PROCESS (CLK, CLR) BEGIN
		IF (CLR='0') THEN
			C <= "110";
		ELSIF (CLK'EVENT AND CLK='1') THEN
			C <= TO_STDLOGICVECTOR(TO_BITVECTOR(C)ROR 1);
		END IF;
	END PROCESS CA;

	DECO: PROCESS(F,C) BEGIN
		CASE F&C IS
			WHEN "0111011" => TECLA <= DIG1;
			WHEN "0111101" => TECLA <= DIG2;
			WHEN "0111110" => TECLA <= DIG3;
			WHEN "1011011" => TECLA <= DIG4;
			WHEN "1011101" => TECLA <= DIG5;
			WHEN "1011110" => TECLA <= DIG6;
			WHEN "1101011" => TECLA <= DIG7;
			WHEN "1101101" => TECLA <= DIG8;
			WHEN "1101110" => TECLA <= DIG9;
			WHEN "1110011" => TECLA <= GATO;
			WHEN "1110101" => TECLA <= DIG0;
			WHEN "1110110" => TECLA <= AST;
			WHEN OTHERS => TECLA <= NOTECLA;
		 END CASE;
	END PROCESS DECO;

	REG: PROCESS(CLR, CLK, F, DISPLAY, TECLA) BEGIN
		IF(CLR='0') THEN
			DISPLAY <= NOTECLA;
		ELSIF (CLK'EVENT AND CLK='1') THEN
			IF (F="1111") THEN
				DISPLAY <= DISPLAY;--retener dato al dejar de presionar
			ELSE
				DISPLAY <= TECLA;--cargar dato al presionar
			END IF;
		END IF;
	END PROCESS REG;
  END A_TM;
