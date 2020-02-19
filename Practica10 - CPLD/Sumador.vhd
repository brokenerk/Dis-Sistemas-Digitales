library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity Reg10 is 
	port(
		clk,clr: in std_logic;
		C: in std_logic_vector(1 downto 0);
		A: in std_logic_vector(3 downto 0);
		B: in std_logic_vector(3 downto 0);
		Carry:inout std_logic;
		q: inout std_logic_vector(3 downto 0)
	);
end entity;
architecture A_Reg10 of Reg10 is 
signal SalidaA:std_logic_vector(3 downto 0);
signal SalidaB:std_logic_vector(3 downto 0);
signal Suma:std_logic;
signal contador:std_logic_vector(3 downto 0);
signal detener:std_logic;
begin 
	--Registro
	process(clk,c,clr)
	begin
		if(clr='0') then 
			SalidaA<=(others =>'0');
			SalidaB<=(others =>'0');
		elsif(rising_edge(clk)) then 
				if(c="01") then
					SalidaA<=A;	
					SalidaB<=B;	
				elsif(c="10") then
					SalidaA<= to_stdlogicvector(to_bitvector(SalidaA)srl 1);
					SalidaB<= to_stdlogicvector(to_bitvector(SalidaB)srl 1);
				elsif(c="11") then 
					SalidaA<=SalidaA;
					SalidaB<=SalidaB;
				end if;
		end if;
	end process;
	process (c,clk,clr,contador) 
	begin 
		if(clr='0') then 
			Carry<= '0';
			Suma<='0';
		elsif(rising_edge(clk)) then 
			if(contador="100") then
				Carry<=Carry;
			elsif(c="10") then 
				Suma<=Carry xor SalidaA(0) xor SalidaB(0);
				Carry <= ((Carry and SalidaA(0)) or (SalidaA(0) and SalidaB(0)) or (Carry and SalidaB(0)));
			else
				Carry<= Carry;
			end if;
		end if;
	end process;
	process (clr,clk,c,contador)
	begin 
		if(clr='0') then 
			contador<=(others=>'0');
			detener<='0';
		elsif(rising_edge(clk)) then 
			if(contador="100") then
				detener<='1';
				contador<=contador;
			elsif(c="10") then 
				contador<=contador+1;
			else
				contador<=contador;
			end if;
		end if;
	end process;
	process (clk,c,clr,detener)
	begin 
		if(clr='0') then 
			q<=(others=>'0');
		elsif (rising_edge(clk)) then 
			if(detener='1') then 
				q<=q;
			elsif(c="10") then 
				q<=to_stdlogicvector(to_bitvector(q)srl 1);
				q(3)<=Suma;
			else
				q<=q;
			end if;
		end if;
	end process;
end A_Reg10;
