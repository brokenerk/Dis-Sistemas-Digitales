
--  CYPRESS NOVA XVL Structural Architecture

--  JED2VHD Reverse Assembler - 6.3 IR 35


--    VHDL File: registro.vhd

--    Date: Sat Mar 24 21:11:52 2018

--  Disassembly from Jedec file for: c22v10

--  Device Ordercode is: PALC22V10D-15PC
library ieee;
use ieee.std_logic_1164.all;

library primitive;
use primitive.primitive.all;


-- Beginning Test Bench Header

ENTITY reg IS
    PORT (
	                 clk :    in std_logic ;
	                 clr :    in std_logic ;
	                  cd :    in std_logic ;
	                  ci :    in std_logic ;
	                   c :    in std_logic_vector (1 downto 0) ;
	                   d :    in std_logic_vector (7 downto 0) ;
	                   q : inout std_logic_vector (7 downto 0)
    );
END reg;

-- End of Test Bench Header

ARCHITECTURE DSMB of reg is

	signal jed_node1	: std_logic:='0' ; -- clk
	signal jed_node2	: std_logic:='0' ; -- c(1)
	signal jed_node3	: std_logic:='0' ; -- c(0)
	signal jed_node4	: std_logic:='0' ; -- d(7)
	signal jed_node5	: std_logic:='0' ; -- d(6)
	signal jed_node6	: std_logic:='0' ; -- d(5)
	signal jed_node7	: std_logic:='0' ; -- d(4)
	signal jed_node8	: std_logic:='0' ; -- d(3)
	signal jed_node9	: std_logic:='0' ; -- d(2)
	signal jed_node10	: std_logic:='0' ; -- d(1)
	signal jed_node11	: std_logic:='0' ; -- d(0)
	signal jed_node12	: std_logic:='0' ;
	signal jed_node13	: std_logic:='0' ; -- ci
	signal jed_node14	: std_logic:='0' ; -- cd
	signal jed_node15	: std_logic:='0' ; -- clr
	signal jed_node24	: std_logic:='0' ;

	for all: c22v10m use entity primitive.c22v10m (sim);

SIGNAL  one:std_logic:='1';
SIGNAL  zero:std_logic:='0';
SIGNAL  jed_oept_1:std_logic:='0';
--Attribute PIN_NUMBERS of clk:SIGNAL is "0001";

SIGNAL  jed_oept_2:std_logic:='0';
--Attribute PIN_NUMBERS of c(1):SIGNAL is "0002";

SIGNAL  jed_oept_3:std_logic:='0';
--Attribute PIN_NUMBERS of c(0):SIGNAL is "0003";

SIGNAL  jed_oept_4:std_logic:='0';
--Attribute PIN_NUMBERS of d(7):SIGNAL is "0004";

SIGNAL  jed_oept_5:std_logic:='0';
--Attribute PIN_NUMBERS of d(6):SIGNAL is "0005";

SIGNAL  jed_oept_6:std_logic:='0';
--Attribute PIN_NUMBERS of d(5):SIGNAL is "0006";

SIGNAL  jed_oept_7:std_logic:='0';
--Attribute PIN_NUMBERS of d(4):SIGNAL is "0007";

SIGNAL  jed_oept_8:std_logic:='0';
--Attribute PIN_NUMBERS of d(3):SIGNAL is "0008";

SIGNAL  jed_oept_9:std_logic:='0';
--Attribute PIN_NUMBERS of d(2):SIGNAL is "0009";

SIGNAL  jed_oept_10:std_logic:='0';
--Attribute PIN_NUMBERS of d(1):SIGNAL is "0010";

SIGNAL  jed_oept_11:std_logic:='0';
--Attribute PIN_NUMBERS of d(0):SIGNAL is "0011";

SIGNAL  jed_oept_13:std_logic:='0';
--Attribute PIN_NUMBERS of ci:SIGNAL is "0013";

SIGNAL  jed_oept_14:std_logic:='0';
SIGNAL  jed_sum_14,jed_fb_14:std_logic:='0';
--Attribute PIN_NUMBERS of cd:SIGNAL is "0014";

SIGNAL  jed_oept_15:std_logic:='0';
SIGNAL  jed_sum_15,jed_fb_15:std_logic:='0';
--Attribute PIN_NUMBERS of clr:SIGNAL is "0015";

SIGNAL  jed_oept_16:std_logic:='0';
SIGNAL  jed_sum_16,jed_fb_16:std_logic:='0';
--Attribute PIN_NUMBERS of q(0):SIGNAL is "0016";

SIGNAL  jed_oept_17:std_logic:='0';
SIGNAL  jed_sum_17,jed_fb_17:std_logic:='0';
--Attribute PIN_NUMBERS of q(1):SIGNAL is "0017";

SIGNAL  jed_oept_18:std_logic:='0';
SIGNAL  jed_sum_18,jed_fb_18:std_logic:='0';
--Attribute PIN_NUMBERS of q(2):SIGNAL is "0018";

SIGNAL  jed_oept_19:std_logic:='0';
SIGNAL  jed_sum_19,jed_fb_19:std_logic:='0';
--Attribute PIN_NUMBERS of q(3):SIGNAL is "0019";

SIGNAL  jed_oept_20:std_logic:='0';
SIGNAL  jed_sum_20,jed_fb_20:std_logic:='0';
--Attribute PIN_NUMBERS of q(4):SIGNAL is "0020";

SIGNAL  jed_oept_21:std_logic:='0';
SIGNAL  jed_sum_21,jed_fb_21:std_logic:='0';
--Attribute PIN_NUMBERS of q(5):SIGNAL is "0021";

SIGNAL  jed_oept_22:std_logic:='0';
SIGNAL  jed_sum_22,jed_fb_22:std_logic:='0';
--Attribute PIN_NUMBERS of q(6):SIGNAL is "0022";

SIGNAL  jed_oept_23:std_logic:='0';
SIGNAL  jed_sum_23,jed_fb_23:std_logic:='0';
--Attribute PIN_NUMBERS of q(7):SIGNAL is "0023";

SIGNAL  jed_oept_25:std_logic:='0';
SIGNAL  jed_node25,jed_sum_25:std_logic:='0';
SIGNAL  jed_oept_26:std_logic:='0';
SIGNAL  jed_node26,jed_sum_26:std_logic:='0';

BEGIN
jed_node1 <= clk ;
jed_node2 <= c(1) ;
jed_node3 <= c(0) ;
jed_node4 <= d(7) ;
jed_node5 <= d(6) ;
jed_node6 <= d(5) ;
jed_node7 <= d(4) ;
jed_node8 <= d(3) ;
jed_node9 <= d(2) ;
jed_node10 <= d(1) ;
jed_node11 <= d(0) ;
jed_node13 <= ci ;
jed_node14 <= cd ;
jed_node15 <= clr ;
Mcell_14:c22v10m
generic map(comb,
   invt,
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
     y=>jed_node14,
     fb=>jed_fb_14
   );

Mcell_15:c22v10m
generic map(comb,
   invt,
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
     y=>jed_node15,
     fb=>jed_fb_15
   );

Mcell_16:c22v10m
generic map(reg,
   ninv,
   xreg,
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
     d=>jed_sum_16,
     clk=>jed_node1,
     oe=>jed_oept_16,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>q(0),
     fb=>jed_fb_16
   );

Mcell_17:c22v10m
generic map(reg,
   ninv,
   xreg,
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
     d=>jed_sum_17,
     clk=>jed_node1,
     oe=>jed_oept_17,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>q(1),
     fb=>jed_fb_17
   );

Mcell_18:c22v10m
generic map(reg,
   ninv,
   xreg,
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
     d=>jed_sum_18,
     clk=>jed_node1,
     oe=>jed_oept_18,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>q(2),
     fb=>jed_fb_18
   );

Mcell_19:c22v10m
generic map(reg,
   ninv,
   xreg,
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
     d=>jed_sum_19,
     clk=>jed_node1,
     oe=>jed_oept_19,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>q(3),
     fb=>jed_fb_19
   );

Mcell_20:c22v10m
generic map(reg,
   ninv,
   xreg,
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
     d=>jed_sum_20,
     clk=>jed_node1,
     oe=>jed_oept_20,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>q(4),
     fb=>jed_fb_20
   );

Mcell_21:c22v10m
generic map(reg,
   ninv,
   xreg,
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
     d=>jed_sum_21,
     clk=>jed_node1,
     oe=>jed_oept_21,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>q(5),
     fb=>jed_fb_21
   );

Mcell_22:c22v10m
generic map(reg,
   ninv,
   xreg,
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
     d=>jed_sum_22,
     clk=>jed_node1,
     oe=>jed_oept_22,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>q(6),
     fb=>jed_fb_22
   );

Mcell_23:c22v10m
generic map(reg,
   ninv,
   xreg,
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
     y=>q(7),
     fb=>jed_fb_23
   );

jed_node25<=jed_sum_25;
jed_node26<=jed_sum_26;
jed_oept_16<=(one);

jed_sum_16<= (((jed_node2) and (jed_node3) and (jed_node13)) or
((jed_node2) and not(jed_node3) and (not(jed_fb_17))
) or
(not(jed_node2) and (jed_node3) and (jed_node11)) or
(not(jed_node2) and not(jed_node3) and (not(jed_fb_16))
));

jed_oept_17<=(one);

jed_sum_17<= (((jed_node2) and (jed_node3) and (not(jed_fb_16))) or
((jed_node2) and not(jed_node3) and (not(jed_fb_18))
) or
(not(jed_node2) and (jed_node3) and (jed_node10)) or
(not(jed_node2) and not(jed_node3) and (not(jed_fb_17))
));

jed_oept_18<=(one);

jed_sum_18<= (((jed_node2) and (jed_node3) and (not(jed_fb_17))) or
((jed_node2) and not(jed_node3) and (not(jed_fb_19))
) or
(not(jed_node2) and (jed_node3) and (jed_node9)) or
(not(jed_node2) and not(jed_node3) and (not(jed_fb_18))
));

jed_oept_19<=(one);

jed_sum_19<= (((jed_node2) and (jed_node3) and (not(jed_fb_18))) or
((jed_node2) and not(jed_node3) and (not(jed_fb_20))
) or
(not(jed_node2) and (jed_node3) and (jed_node8)) or
(not(jed_node2) and not(jed_node3) and (not(jed_fb_19))
));

jed_oept_20<=(one);

jed_sum_20<= (((jed_node2) and (jed_node3) and (not(jed_fb_19))) or
((jed_node2) and not(jed_node3) and (not(jed_fb_21))
) or
(not(jed_node2) and (jed_node3) and (jed_node7)) or
(not(jed_node2) and not(jed_node3) and (not(jed_fb_20))
));

jed_oept_21<=(one);

jed_sum_21<= (((jed_node2) and (jed_node3) and (not(jed_fb_20))) or
((jed_node2) and (not(jed_fb_22)) and not(jed_node3)
) or
(not(jed_node2) and (jed_node3) and (jed_node6)) or
(not(jed_node2) and not(jed_node3) and (not(jed_fb_21))
));

jed_oept_22<=(one);

jed_sum_22<= (((jed_node2) and (jed_node3) and (not(jed_fb_21))) or
((not(jed_fb_23)) and (jed_node2) and not(jed_node3)
) or
(not(jed_node2) and (jed_node3) and (jed_node5)) or
(not(jed_node2) and (not(jed_fb_22)) and not(jed_node3)
));

jed_oept_23<=(one);

jed_sum_23<= (((jed_node2) and (not(jed_fb_22)) and (jed_node3)) or
((jed_node2) and not(jed_node3) and (jed_fb_14)) or
(not(jed_node2) and (jed_node3) and (jed_node4)) or
((not(jed_fb_23)) and not(jed_node2) and not(jed_node3)
));

jed_sum_25<= ((not(jed_fb_15)));

end DSMB;
