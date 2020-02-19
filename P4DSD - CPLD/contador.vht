
-- VHDL Test Bench Created from source file contador.vhd -- 04/16/18  17:00:21
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Lattice recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "source->import"
-- menu in the ispLEVER Project Navigator to import the testbench.
-- Then edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
LIBRARY generics;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE generics.components.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE behavior OF testbench IS 

	COMPONENT contador
	PORT(
		CLR : IN std_logic;
		CLK : IN std_logic;
		C : IN std_logic;       
		Q : INOUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;

	SIGNAL CLR :  std_logic;
	SIGNAL CLK :  std_logic;
	SIGNAL C :  std_logic;
	SIGNAL Q :  std_logic_vector(9 downto 0);

BEGIN

	uut: contador PORT MAP(
		CLR => CLR,
		CLK => CLK,
		C => C,
		Q => Q
	);


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      wait; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
