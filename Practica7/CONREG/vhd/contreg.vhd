
--  CYPRESS NOVA XVL Structural Architecture

--  JED2VHD Reverse Assembler - 6.3 IR 35


--    VHDL File: contreg.vhd

--    Date: Thu May 24 19:37:34 2018

--  Disassembly from Jedec file for: c22v10

--  Device Ordercode is: PALC22V10D-15PC
library ieee;
use ieee.std_logic_1164.all;

library primitive;
use primitive.primitive.all;


-- Beginning Test Bench Header

ENTITY contreg IS
    PORT (
	                 clk :    in std_logic ;
	                 clr :    in std_logic ;
	                   c :    in std_logic_vector (2 downto 0) ;
	                   e :    in std_logic_vector (3 downto 0) ;
	                   q : inout std_logic_vector (3 downto 0)
    );
END contreg;

-- End of Test Bench Header

ARCHITECTURE DSMB of contreg is

	signal jed_node1	: std_logic:='0' ; -- clk
	signal jed_node2	: std_logic:='0' ; -- e(3)
	signal jed_node3	: std_logic:='0' ; -- e(2)
	signal jed_node4	: std_logic:='0' ; -- e(1)
	signal jed_node5	: std_logic:='0' ; -- e(0)
	signal jed_node6	: std_logic:='0' ; -- clr
	signal jed_node7	: std_logic:='0' ; -- c(2)
	signal jed_node8	: std_logic:='0' ; -- c(1)
	signal jed_node9	: std_logic:='0' ; -- c(0)
	signal jed_node10	: std_logic:='0' ;
	signal jed_node11	: std_logic:='0' ;
	signal jed_node12	: std_logic:='0' ;
	signal jed_node13	: std_logic:='0' ;
	signal jed_node14	: std_logic:='0' ;
	signal jed_node16	: std_logic:='0' ;
	signal jed_node17	: std_logic:='0' ;
	signal jed_node19	: std_logic:='0' ;
	signal jed_node20	: std_logic:='0' ;
	signal jed_node21	: std_logic:='0' ;
	signal jed_node24	: std_logic:='0' ;

	for all: c22v10m use entity primitive.c22v10m (sim);

SIGNAL  one:std_logic:='1';
SIGNAL  zero:std_logic:='0';
SIGNAL  jed_oept_1:std_logic:='0';
--Attribute PIN_NUMBERS of clk:SIGNAL is "0001";

SIGNAL  jed_oept_2:std_logic:='0';
--Attribute PIN_NUMBERS of e(3):SIGNAL is "0002";

SIGNAL  jed_oept_3:std_logic:='0';
--Attribute PIN_NUMBERS of e(2):SIGNAL is "0003";

SIGNAL  jed_oept_4:std_logic:='0';
--Attribute PIN_NUMBERS of e(1):SIGNAL is "0004";

SIGNAL  jed_oept_5:std_logic:='0';
--Attribute PIN_NUMBERS of e(0):SIGNAL is "0005";

SIGNAL  jed_oept_6:std_logic:='0';
--Attribute PIN_NUMBERS of clr:SIGNAL is "0006";

SIGNAL  jed_oept_7:std_logic:='0';
--Attribute PIN_NUMBERS of c(2):SIGNAL is "0007";

SIGNAL  jed_oept_8:std_logic:='0';
--Attribute PIN_NUMBERS of c(1):SIGNAL is "0008";

SIGNAL  jed_oept_9:std_logic:='0';
--Attribute PIN_NUMBERS of c(0):SIGNAL is "0009";

SIGNAL  jed_oept_14:std_logic:='0';
SIGNAL contador_0:std_logic:='0';
SIGNAL  jed_sum_14,jed_fb_14:std_logic:='0';
--Attribute PIN_NUMBERS of jed_node14:SIGNAL is "0014";

SIGNAL  jed_oept_15:std_logic:='0';
SIGNAL  jed_sum_15,jed_fb_15:std_logic:='0';
--Attribute PIN_NUMBERS of q(1):SIGNAL is "0015";

SIGNAL  jed_oept_16:std_logic:='0';
SIGNAL contador_1:std_logic:='0';
SIGNAL  jed_sum_16,jed_fb_16:std_logic:='0';
--Attribute PIN_NUMBERS of jed_node16:SIGNAL is "0016";

SIGNAL  jed_oept_17:std_logic:='0';
SIGNAL contador_2:std_logic:='0';
SIGNAL  jed_sum_17,jed_fb_17:std_logic:='0';
--Attribute PIN_NUMBERS of jed_node17:SIGNAL is "0017";

SIGNAL  jed_oept_18:std_logic:='0';
SIGNAL  jed_sum_18,jed_fb_18:std_logic:='0';
--Attribute PIN_NUMBERS of q(3):SIGNAL is "0018";

SIGNAL  jed_oept_22:std_logic:='0';
SIGNAL  jed_sum_22,jed_fb_22:std_logic:='0';
--Attribute PIN_NUMBERS of q(0):SIGNAL is "0022";

SIGNAL  jed_oept_23:std_logic:='0';
SIGNAL  jed_sum_23,jed_fb_23:std_logic:='0';
--Attribute PIN_NUMBERS of q(2):SIGNAL is "0023";

SIGNAL  jed_oept_25:std_logic:='0';
SIGNAL  jed_node25,jed_sum_25:std_logic:='0';
SIGNAL  jed_oept_26:std_logic:='0';
SIGNAL  jed_node26,jed_sum_26:std_logic:='0';

BEGIN
jed_node1 <= clk ;
jed_node2 <= e(3) ;
jed_node3 <= e(2) ;
jed_node4 <= e(1) ;
jed_node5 <= e(0) ;
jed_node6 <= clr ;
jed_node7 <= c(2) ;
jed_node8 <= c(1) ;
jed_node9 <= c(0) ;
Mcell_14:c22v10m
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
     y=>q(1),
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
     y=>jed_node16,
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
     y=>jed_node17,
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
     y=>q(3),
     fb=>jed_fb_18
   );

Mcell_22:c22v10m
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
     d=>jed_sum_22,
     clk=>jed_node1,
     oe=>jed_oept_22,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>q(0),
     fb=>jed_fb_22
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
     y=>q(2),
     fb=>jed_fb_23
   );

contador_0 <= jed_fb_14;
contador_1 <= jed_fb_16;
contador_2 <= jed_fb_17;
jed_node25<=jed_sum_25;
jed_node26<=jed_sum_26;
jed_sum_14<= (((jed_node7) and (jed_node8) and (not(jed_fb_16)) and (jed_node9)
) or
((not(jed_fb_18)) and (jed_node7) and (jed_node8) and not(jed_node9)
) or
(not(jed_node7) and not(jed_node8) and (jed_node9) and (not(jed_fb_14))
) or
((jed_node5) and not(jed_node7) and not(jed_node8) and not(jed_node9)
) or
((jed_node7) and not(jed_node8) and not(not(jed_fb_14))
) or
(not(jed_node7) and (jed_node8) and not(not(jed_fb_14))
));

jed_oept_15<=(one);

jed_sum_15<= (((jed_node7) and (not(jed_fb_17)) and not(jed_node8)
 and not(not(jed_fb_16))) or
((jed_node8) and (not(jed_fb_16))) or
(not(jed_node7) and (not(jed_fb_16))) or
(not(not(jed_fb_17)) and (not(jed_fb_16))));

jed_sum_16<= (((jed_node7) and not(jed_node8) and (not(jed_fb_16))
 and not(jed_node9) and not(not(jed_fb_14))) or
(not(jed_node7) and (jed_node8) and (not(jed_fb_16))
 and not(jed_node9) and not(not(jed_fb_14))) or
((jed_node7) and not(jed_node8) and not(not(jed_fb_16))
 and (jed_node9) and not(not(jed_fb_14))) or
(not(jed_node7) and (jed_node8) and not(not(jed_fb_16))
 and (jed_node9) and not(not(jed_fb_14))) or
((jed_node7) and (not(jed_fb_17)) and (jed_node8) and (jed_node9)
) or
((jed_node7) and (jed_node8) and not(jed_node9) and (not(jed_fb_14))
) or
(not(jed_node8) and (not(jed_fb_16)) and (jed_node9)
 and (not(jed_fb_14))) or
(not(jed_node7) and (not(jed_fb_16)) and (jed_node9)
 and (not(jed_fb_14))) or
(not(jed_node7) and not(jed_node8) and (not(jed_fb_16))
 and (jed_node9)) or
((jed_node4) and not(jed_node7) and not(jed_node8) and not(jed_node9)
) or
((jed_node7) and not(not(jed_fb_16)) and not(jed_node9)
 and (not(jed_fb_14))) or
((jed_node8) and not(not(jed_fb_16)) and not(jed_node9)
 and (not(jed_fb_14))));

jed_sum_17<= (((jed_node7) and not(not(jed_fb_17)) and not(jed_node8)
 and not(not(jed_fb_16)) and (jed_node9) and not(not(jed_fb_14))
) or
(not(jed_node7) and not(not(jed_fb_17)) and (jed_node8)
 and not(not(jed_fb_16)) and (jed_node9) and not(not(jed_fb_14))
) or
((jed_node7) and (not(jed_fb_17)) and not(jed_node8)
 and not(jed_node9) and not(not(jed_fb_14))) or
(not(jed_node7) and (not(jed_fb_17)) and (jed_node8)
 and not(jed_node9) and not(not(jed_fb_14))) or
((jed_node7) and (not(jed_fb_17)) and not(jed_node8)
 and not(not(jed_fb_16)) and (not(jed_fb_14))) or
(not(jed_node7) and (not(jed_fb_17)) and (jed_node8)
 and not(not(jed_fb_16)) and (not(jed_fb_14))) or
((jed_node7) and not(not(jed_fb_17)) and (not(jed_fb_16))
 and not(jed_node9) and (not(jed_fb_14))) or
(not(not(jed_fb_17)) and (jed_node8) and (not(jed_fb_16))
 and not(jed_node9) and (not(jed_fb_14))) or
((not(jed_fb_18)) and (jed_node7) and (jed_node8) and (jed_node9)
) or
((jed_node7) and (jed_node8) and (not(jed_fb_16)) and not(jed_node9)
) or
((not(jed_fb_17)) and not(jed_node8) and (not(jed_fb_16))
 and (jed_node9)) or
(not(jed_node7) and (not(jed_fb_17)) and (not(jed_fb_16))
 and (jed_node9)) or
(not(jed_node7) and (not(jed_fb_17)) and not(jed_node8)
 and (jed_node9)) or
((jed_node3) and not(jed_node7) and not(jed_node8) and not(jed_node9)
));

jed_oept_18<=(one);

jed_sum_18<= ((not(not(jed_fb_18)) and (jed_node7) and not(not(jed_fb_17))
 and not(jed_node8) and not(not(jed_fb_16)) and (jed_node9)
 and not(not(jed_fb_14))) or
(not(not(jed_fb_18)) and not(jed_node7) and not(not(jed_fb_17))
 and (jed_node8) and not(not(jed_fb_16)) and (jed_node9)
 and not(not(jed_fb_14))) or
(not(not(jed_fb_18)) and (jed_node7) and (not(jed_fb_17))
 and (not(jed_fb_16)) and not(jed_node9) and (not(jed_fb_14))
) or
(not(not(jed_fb_18)) and (not(jed_fb_17)) and (jed_node8)
 and (not(jed_fb_16)) and not(jed_node9) and (not(jed_fb_14))
) or
((not(jed_fb_18)) and (jed_node7) and not(jed_node8)
 and not(jed_node9) and not(not(jed_fb_14))) or
((not(jed_fb_18)) and not(jed_node7) and (jed_node8)
 and not(jed_node9) and not(not(jed_fb_14))) or
((not(jed_fb_18)) and (jed_node7) and (not(jed_fb_17))
 and not(jed_node8) and not(not(jed_fb_16))) or
((not(jed_fb_18)) and not(jed_node7) and (not(jed_fb_17))
 and (jed_node8) and not(not(jed_fb_16))) or
((not(jed_fb_18)) and (jed_node7) and not(not(jed_fb_17))
 and not(jed_node8) and (not(jed_fb_14))) or
((not(jed_fb_18)) and not(jed_node7) and not(not(jed_fb_17))
 and (jed_node8) and (not(jed_fb_14))) or
((jed_node7) and (jed_node8) and (jed_node9) and (not(jed_fb_14))
) or
((jed_node7) and (not(jed_fb_17)) and (jed_node8) and not(jed_node9)
) or
((not(jed_fb_18)) and not(jed_node8) and (not(jed_fb_16))
 and (jed_node9)) or
((not(jed_fb_18)) and not(jed_node7) and (not(jed_fb_16))
 and (jed_node9)) or
((not(jed_fb_18)) and not(jed_node7) and not(jed_node8)
 and (jed_node9)) or
((jed_node2) and not(jed_node7) and not(jed_node8) and not(jed_node9)
));

jed_oept_22<=(one);

jed_sum_22<= (((jed_node7) and not(jed_node8) and (not(jed_fb_16))
 and not(not(jed_fb_14))) or
((jed_node8) and (not(jed_fb_14))) or
(not(jed_node7) and (not(jed_fb_14))) or
(not(not(jed_fb_16)) and (not(jed_fb_14))));

jed_oept_23<=(one);

jed_sum_23<= (((not(jed_fb_18)) and (jed_node7) and not(not(jed_fb_17))
 and not(jed_node8)) or
((not(jed_fb_17)) and (jed_node8)) or
(not(jed_node7) and (not(jed_fb_17))) or
(not(not(jed_fb_18)) and (not(jed_fb_17))));

jed_sum_25<= ((not(jed_node6)));

end DSMB;
