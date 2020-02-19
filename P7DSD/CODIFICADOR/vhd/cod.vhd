
--  CYPRESS NOVA XVL Structural Architecture

--  JED2VHD Reverse Assembler - 6.3 IR 35


--    VHDL File: cod.vhd

--    Date: Thu May 24 19:17:24 2018

--  Disassembly from Jedec file for: c22v10

--  Device Ordercode is: PALC22V10D-15PC
library ieee;
use ieee.std_logic_1164.all;

library primitive;
use primitive.primitive.all;


-- Beginning Test Bench Header

ENTITY cod IS
    PORT (
	                   i :    in std_logic_vector (7 downto 0) ;
	                   c : inout std_logic_vector (2 downto 0)
    );
END cod;

-- End of Test Bench Header

ARCHITECTURE DSMB of cod is

	signal jed_node1	: std_logic:='0' ; -- i(7)
	signal jed_node2	: std_logic:='0' ; -- i(6)
	signal jed_node3	: std_logic:='0' ; -- i(5)
	signal jed_node4	: std_logic:='0' ; -- i(4)
	signal jed_node5	: std_logic:='0' ; -- i(3)
	signal jed_node6	: std_logic:='0' ; -- i(2)
	signal jed_node7	: std_logic:='0' ; -- i(1)
	signal jed_node8	: std_logic:='0' ; -- i(0)
	signal jed_node9	: std_logic:='0' ;
	signal jed_node10	: std_logic:='0' ;
	signal jed_node11	: std_logic:='0' ;
	signal jed_node12	: std_logic:='0' ;
	signal jed_node13	: std_logic:='0' ;
	signal jed_node16	: std_logic:='0' ;
	signal jed_node17	: std_logic:='0' ;
	signal jed_node18	: std_logic:='0' ;
	signal jed_node19	: std_logic:='0' ;
	signal jed_node20	: std_logic:='0' ;
	signal jed_node21	: std_logic:='0' ;
	signal jed_node22	: std_logic:='0' ;
	signal jed_node24	: std_logic:='0' ;

	for all: c22v10m use entity primitive.c22v10m (sim);

SIGNAL  one:std_logic:='1';
SIGNAL  zero:std_logic:='0';
SIGNAL  jed_oept_1:std_logic:='0';
--Attribute PIN_NUMBERS of i(7):SIGNAL is "0001";

SIGNAL  jed_oept_2:std_logic:='0';
--Attribute PIN_NUMBERS of i(6):SIGNAL is "0002";

SIGNAL  jed_oept_3:std_logic:='0';
--Attribute PIN_NUMBERS of i(5):SIGNAL is "0003";

SIGNAL  jed_oept_4:std_logic:='0';
--Attribute PIN_NUMBERS of i(4):SIGNAL is "0004";

SIGNAL  jed_oept_5:std_logic:='0';
--Attribute PIN_NUMBERS of i(3):SIGNAL is "0005";

SIGNAL  jed_oept_6:std_logic:='0';
--Attribute PIN_NUMBERS of i(2):SIGNAL is "0006";

SIGNAL  jed_oept_7:std_logic:='0';
--Attribute PIN_NUMBERS of i(1):SIGNAL is "0007";

SIGNAL  jed_oept_8:std_logic:='0';
--Attribute PIN_NUMBERS of i(0):SIGNAL is "0008";

SIGNAL  jed_oept_14:std_logic:='0';
SIGNAL  jed_sum_14,jed_fb_14:std_logic:='0';
--Attribute PIN_NUMBERS of c(2):SIGNAL is "0014";

SIGNAL  jed_oept_15:std_logic:='0';
SIGNAL  jed_sum_15,jed_fb_15:std_logic:='0';
--Attribute PIN_NUMBERS of c(0):SIGNAL is "0015";

SIGNAL  jed_oept_23:std_logic:='0';
SIGNAL  jed_sum_23,jed_fb_23:std_logic:='0';
--Attribute PIN_NUMBERS of c(1):SIGNAL is "0023";

SIGNAL  jed_oept_25:std_logic:='0';
SIGNAL  jed_node25,jed_sum_25:std_logic:='0';
SIGNAL  jed_oept_26:std_logic:='0';
SIGNAL  jed_node26,jed_sum_26:std_logic:='0';

BEGIN
jed_node1 <= i(7) ;
jed_node2 <= i(6) ;
jed_node3 <= i(5) ;
jed_node4 <= i(4) ;
jed_node5 <= i(3) ;
jed_node6 <= i(2) ;
jed_node7 <= i(1) ;
jed_node8 <= i(0) ;
Mcell_14:c22v10m
generic map(comb,
   ninv,
   xpin,
   	15 ns, --tpd
	15 ns, --tea
	15 ns, --ter
	8 ns, --tco
	10 ns, --ts
	0 ns, --th
	6 ns, --twh
	6 ns, --twl
	4 ns, --tcf
	15 ns, --taw
	10 ns, --tar
	20 ns, --tap
	10 ns  --tspr
)
port map(
     d=>jed_sum_14,
     clk=>jed_node1,
     oe=>jed_oept_14,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>c(2),
     fb=>jed_fb_14
   );

Mcell_15:c22v10m
generic map(comb,
   ninv,
   xpin,
   	15 ns, --tpd
	15 ns, --tea
	15 ns, --ter
	8 ns, --tco
	10 ns, --ts
	0 ns, --th
	6 ns, --twh
	6 ns, --twl
	4 ns, --tcf
	15 ns, --taw
	10 ns, --tar
	20 ns, --tap
	10 ns  --tspr
)
port map(
     d=>jed_sum_15,
     clk=>jed_node1,
     oe=>jed_oept_15,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>c(0),
     fb=>jed_fb_15
   );

Mcell_23:c22v10m
generic map(comb,
   ninv,
   xpin,
   	15 ns, --tpd
	15 ns, --tea
	15 ns, --ter
	8 ns, --tco
	10 ns, --ts
	0 ns, --th
	6 ns, --twh
	6 ns, --twl
	4 ns, --tcf
	15 ns, --taw
	10 ns, --tar
	20 ns, --tap
	10 ns  --tspr
)
port map(
     d=>jed_sum_23,
     clk=>jed_node1,
     oe=>jed_oept_23,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>c(1),
     fb=>jed_fb_23
   );

jed_node25<=jed_sum_25;
jed_node26<=jed_sum_26;
jed_oept_14<=(one);

jed_sum_14<= (((jed_node1) and not(jed_node5) and not(jed_node6) and not(jed_node7)
 and not(jed_node8)) or
((jed_node2) and not(jed_node5) and not(jed_node6) and not(jed_node7)
 and not(jed_node8)) or
((jed_node3) and not(jed_node5) and not(jed_node6) and not(jed_node7)
 and not(jed_node8)) or
((jed_node4) and not(jed_node5) and not(jed_node6) and not(jed_node7)
 and not(jed_node8)));

jed_oept_15<=(one);

jed_sum_15<= (((jed_node3) and not(jed_node4) and not(jed_node6) and not(jed_node8)
) or
(not(jed_node2) and not(jed_node4) and not(jed_node6)
 and not(jed_node8)) or
((jed_node5) and not(jed_node6) and not(jed_node8)) or
((jed_node7) and not(jed_node8)));

jed_oept_23<=(one);

jed_sum_23<= (((jed_node1) and not(jed_node3) and not(jed_node4) and not(jed_node7)
 and not(jed_node8)) or
((jed_node2) and not(jed_node3) and not(jed_node4) and not(jed_node7)
 and not(jed_node8)) or
((jed_node5) and not(jed_node7) and not(jed_node8)) or
((jed_node6) and not(jed_node7) and not(jed_node8)));

end DSMB;
