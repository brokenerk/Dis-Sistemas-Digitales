// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Sat Jun 16 16:48:25 2018
//
// Verilog Description of module SEC
//

module SEC (CLR, CLK, ENTRADA, DISPLAY);   // secuencia.vhd(4[8:11])
    input CLR;   // secuencia.vhd(5[2:5])
    input CLK;   // secuencia.vhd(5[6:9])
    input [5:0]ENTRADA;   // secuencia.vhd(6[2:9])
    output [6:0]DISPLAY;   // secuencia.vhd(7[2:9])
    
    wire CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CLK_c */ ;   // secuencia.vhd(5[6:9])
    
    wire DISPLAY_c, pwr, n18, CLR_c, ENTRADA_c_5, ENTRADA_c_4, ENTRADA_c_3, 
        ENTRADA_c_2, ENTRADA_c_1, ENTRADA_c_0, DISPLAY_c_6, n661, 
        DISPLAY_c_4, n659, n712, n268, n657;
    wire [31:0]I;   // secuencia.vhd(16[17:18])
    wire [2:0]PRE;   // secuencia.vhd(17[8:11])
    wire [2:0]FUT;   // secuencia.vhd(18[8:11])
    
    wire n12, I_31__N_85;
    wire [31:0]I_31__N_53;
    
    wire n688;
    wire [31:0]I_31__N_1;
    
    wire n16, n716, n714, n713, n711, n14, n10, n58, n8, n6, 
        n57;
    wire [2:0]FUT_2__N_38;
    
    wire n4, n710, n690, n56;
    wire [2:0]FUT_2__N_35;
    
    wire n708, n687, n62, n308, n293, n60, n58_adj_1, n56_adj_2, 
        n655, n54, n653, n52, n651, n50, n649, n48, n647, 
        n46, n645, n643, n641, n44, n639, n42, n637, n635, 
        n633, n40, n631, n629, n627, n38, n625, n721, n623, 
        n621, n619, n4_adj_3, n617, n602, n20, n30, n54_adj_4, 
        n1, n707, n615, n36, n705, n613, n53, n34, n706, n709, 
        n715, n699, n611, n28, n609, n5, n26, n607, n24, n3, 
        n605, n22, n32, n603, n663, n52_adj_5, n51, n704, n50_adj_6, 
        n49, n40_adj_7, n39, n33, n38_adj_8, n703, n48_adj_9, 
        n701, n698, n694, n46_adj_10, n697, n45, n691, n696, 
        n44_adj_11, n37, n32_adj_12, n36_adj_13, n693, n43, n42_adj_14, 
        n725, n41, n9, n35, n4_adj_15, n34_adj_16, n724, n1_adj_17, 
        n722, n720, n719, n718, n700;
    
    DFFR PRE_i0 (.Q(PRE[0]), .D(FUT[0]), .CLK(CLK_c), .R(CLR_c));   // secuencia.vhd(23[3] 33[10])
    DFFR I_i6 (.Q(I[6]), .D(I_31__N_1[6]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i5 (.Q(I[5]), .D(I_31__N_1[5]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i4 (.Q(I[4]), .D(I_31__N_1[4]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFS I_i0 (.Q(I[0]), .D(I_31__N_1[0]), .CLK(CLK_c), .S(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i3 (.Q(I[3]), .D(I_31__N_1[3]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFS I_i2 (.Q(I[2]), .D(I_31__N_1[2]), .CLK(CLK_c), .S(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i1 (.Q(I[1]), .D(I_31__N_1[1]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR PRE_i2 (.Q(PRE[2]), .D(FUT[2]), .CLK(CLK_c), .R(CLR_c));   // secuencia.vhd(23[3] 33[10])
    XOR2 i1_adj_1 (.O(n631), .I0(n30), .I1(I[15]));
    OBUF DISPLAY_pad_6 (.O(DISPLAY[6]), .I0(DISPLAY_c_6));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    IBUF ENTRADA_pad_0 (.O(ENTRADA_c_0), .I0(ENTRADA[0]));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    DFFR PRE_i1 (.Q(PRE[1]), .D(FUT[1]), .CLK(CLK_c), .R(CLR_c));   // secuencia.vhd(23[3] 33[10])
    DFFR I_i8 (.Q(I[8]), .D(I_31__N_1[8]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    OBUF DISPLAY_pad_5 (.O(DISPLAY[5]), .I0(DISPLAY_c_4));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    IBUF ENTRADA_pad_1 (.O(ENTRADA_c_1), .I0(ENTRADA[1]));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    IBUF ENTRADA_pad_2 (.O(ENTRADA_c_2), .I0(ENTRADA[2]));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    IBUF ENTRADA_pad_3 (.O(ENTRADA_c_3), .I0(ENTRADA[3]));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    IBUF ENTRADA_pad_4 (.O(ENTRADA_c_4), .I0(ENTRADA[4]));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    IBUF ENTRADA_pad_5 (.O(ENTRADA_c_5), .I0(ENTRADA[5]));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    IBUF CLK_pad (.O(CLK_c), .I0(CLK));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    IBUF CLR_pad (.O(CLR_c), .I0(CLR));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    OBUF DISPLAY_pad_0 (.O(DISPLAY[0]), .I0(DISPLAY_c_4));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    OBUF DISPLAY_pad_1 (.O(DISPLAY[1]), .I0(DISPLAY_c));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    OBUF DISPLAY_pad_2 (.O(DISPLAY[2]), .I0(DISPLAY_c));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    OBUF DISPLAY_pad_3 (.O(DISPLAY[3]), .I0(DISPLAY_c_4));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    OBUF DISPLAY_pad_4 (.O(DISPLAY[4]), .I0(DISPLAY_c_4));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    DFFR I_i9 (.Q(I[9]), .D(I_31__N_1[9]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i10 (.Q(I[10]), .D(I_31__N_1[10]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i11 (.Q(I[11]), .D(I_31__N_1[11]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i12 (.Q(I[12]), .D(I_31__N_1[12]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i13 (.Q(I[13]), .D(I_31__N_1[13]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i14 (.Q(I[14]), .D(I_31__N_1[14]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i15 (.Q(I[15]), .D(I_31__N_1[15]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i16 (.Q(I[16]), .D(I_31__N_1[16]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i17 (.Q(I[17]), .D(I_31__N_1[17]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i18 (.Q(I[18]), .D(I_31__N_1[18]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i19 (.Q(I[19]), .D(I_31__N_1[19]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i20 (.Q(I[20]), .D(I_31__N_1[20]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i21 (.Q(I[21]), .D(I_31__N_1[21]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i22 (.Q(I[22]), .D(I_31__N_1[22]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i23 (.Q(I[23]), .D(I_31__N_1[23]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i24 (.Q(I[24]), .D(I_31__N_1[24]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i25 (.Q(I[25]), .D(I_31__N_1[25]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i26 (.Q(I[26]), .D(I_31__N_1[26]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i27 (.Q(I[27]), .D(I_31__N_1[27]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i28 (.Q(I[28]), .D(I_31__N_1[28]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i29 (.Q(I[29]), .D(I_31__N_1[29]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i30 (.Q(I[30]), .D(I_31__N_1[30]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    DFFR I_i31 (.Q(I[31]), .D(I_31__N_1[31]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    INV i1_adj_2 (.O(n1_adj_17), .I0(PRE[2]));
    INV i4 (.O(n4_adj_15), .I0(PRE[1]));
    DFFR I_i7 (.Q(I[7]), .D(I_31__N_1[7]), .CLK(CLK_c), .R(CLR_c)) /* synthesis lse_init_val=0 */ ;   // secuencia.vhd(23[3] 33[10])
    OR2 i3 (.O(n34_adj_16), .I0(I[9]), .I1(I[0]));
    OR2 i4_adj_3 (.O(n35), .I0(I[15]), .I1(I[13]));
    OR2 i10 (.O(n41), .I0(I[12]), .I1(I[11]));
    OR2 i11 (.O(n42_adj_14), .I0(I[19]), .I1(I[14]));
    OR2 i5 (.O(n36_adj_13), .I0(I[21]), .I1(I[16]));
    OR2 i12 (.O(n43), .I0(I[22]), .I1(I[20]));
    OR2 i13 (.O(n44_adj_11), .I0(I[3]), .I1(I[26]));
    INV i551 (.O(n690), .I0(n603));
    INV i552 (.O(n691), .I0(I_31__N_85));
    OR2 i14 (.O(n45), .I0(I[6]), .I1(I[4]));
    OR2 i15 (.O(n46_adj_10), .I0(I[18]), .I1(I[10]));
    AND2 i564 (.O(n703), .I0(n693), .I1(ENTRADA_c_4));
    INV i554 (.O(n693), .I0(I[0]));
    OR2 i6 (.O(n37), .I0(I[24]), .I1(I[23]));
    INV i555 (.O(n694), .I0(I_31__N_85));
    OR2 i17 (.O(n48_adj_9), .I0(n34_adj_16), .I1(n33));
    OR2 i18 (.O(n49), .I0(n36_adj_13), .I1(n35));
    VCC i547 (.X(pwr));
    OR2 i7 (.O(n38_adj_8), .I0(I[28]), .I1(I[27]));
    AND2 i127 (.O(n268), .I0(PRE[2]), .I1(PRE[1]));
    OR2 i2 (.O(n33), .I0(I[29]), .I1(I[25]));
    OR2 i8 (.O(n39), .I0(I[5]), .I1(I[30]));
    OR2 i19 (.O(n50_adj_6), .I0(n38_adj_8), .I1(n37));
    XOR2 i1_adj_4 (.O(n603), .I0(n4), .I1(I[2]));
    OR2 i20 (.O(n51), .I0(n40_adj_7), .I1(n39));
    OR2 i21 (.O(n52_adj_5), .I0(n42_adj_14), .I1(n41));
    OR2 i22 (.O(n53), .I0(n44_adj_11), .I1(n43));
    OR2 i9 (.O(n40_adj_7), .I0(I[8]), .I1(I[7]));
    OR2 i23 (.O(n54_adj_4), .I0(n46_adj_10), .I1(n45));
    INV i494 (.O(I_31__N_53[16]), .I0(n633));
    XOR2 i1_adj_5 (.O(n615), .I0(n14), .I1(I[7]));
    INV i496 (.O(I_31__N_53[17]), .I0(n635));
    AND2 i574 (.O(n713), .I0(PRE[1]), .I1(n5));
    OR2 i25 (.O(n56), .I0(n50_adj_6), .I1(n49));
    INV i498 (.O(I_31__N_53[18]), .I0(n637));
    XOR2 i1_adj_6 (.O(n629), .I0(n28), .I1(I[14]));
    INV i500 (.O(I_31__N_53[19]), .I0(n639));
    INV i502 (.O(I_31__N_53[20]), .I0(n641));
    XOR2 i1_adj_7 (.O(n617), .I0(n16), .I1(I[8]));
    AND2 i151 (.O(DISPLAY_c_4), .I0(n268), .I1(n5));
    OR2 i1_adj_8 (.O(n32_adj_12), .I0(I[17]), .I1(I[1]));
    INV i480 (.O(I_31__N_53[9]), .I0(n619));
    GND i1 (.X(DISPLAY_c));
    AND2 i148 (.O(n1), .I0(PRE[0]), .I1(FUT_2__N_38[2]));
    INV i482 (.O(I_31__N_53[10]), .I0(n621));
    INV i504 (.O(I_31__N_53[21]), .I0(n643));
    INV i124 (.O(n5), .I0(PRE[0]));
    XOR2 i1_adj_9 (.O(n621), .I0(n20), .I1(I[10]));
    INV i506 (.O(I_31__N_53[22]), .I0(n645));
    OR2 i26 (.O(n57), .I0(n52_adj_5), .I1(n51));
    XOR2 i1_adj_10 (.O(n607), .I0(n6), .I1(I[3]));
    INV i508 (.O(I_31__N_53[23]), .I0(n647));
    INV i472 (.O(I_31__N_53[5]), .I0(n611));
    INV i470 (.O(I_31__N_53[4]), .I0(n609));
    OR2 i575 (.O(n714), .I0(n713), .I1(n712));
    INV i510 (.O(I_31__N_53[24]), .I0(n649));
    INV i512 (.O(I_31__N_53[25]), .I0(n651));
    AND2 i577 (.O(n716), .I0(PRE[2]), .I1(n714));
    INV i548 (.O(n687), .I0(PRE[0]));
    INV i514 (.O(I_31__N_53[26]), .I0(n653));
    INV i516 (.O(I_31__N_53[27]), .I0(n655));
    INV i549 (.O(n688), .I0(n268));
    INV i474 (.O(I_31__N_53[6]), .I0(n613));
    INV i167 (.O(n308), .I0(I[31]));
    INV i518 (.O(I_31__N_53[28]), .I0(n657));
    XOR2 i1_adj_11 (.O(n623), .I0(n22), .I1(I[11]));
    INV i520 (.O(I_31__N_53[29]), .I0(n659));
    INV i522 (.O(I_31__N_53[30]), .I0(n661));
    INV i524 (.O(I_31__N_53[31]), .I0(n663));
    INV i492 (.O(I_31__N_53[15]), .I0(n631));
    INV i488 (.O(I_31__N_53[13]), .I0(n627));
    INV i478 (.O(I_31__N_53[8]), .I0(n617));
    INV i476 (.O(I_31__N_53[7]), .I0(n615));
    INV i486 (.O(I_31__N_53[12]), .I0(n625));
    INV i152 (.O(n293), .I0(I[1]));
    INV i468 (.O(I_31__N_53[3]), .I0(n607));
    INV i466 (.O(I_31__N_53[1]), .I0(n605));
    INV i490 (.O(I_31__N_53[14]), .I0(n629));
    OR2 i27 (.O(n58), .I0(n54_adj_4), .I1(n53));
    INV FUT_2__N_86_I_0_37 (.O(FUT_2__N_35[1]), .I0(FUT_2__N_38[2]));
    INV i484 (.O(I_31__N_53[11]), .I0(n623));
    INV i560 (.O(n699), .I0(I[2]));
    AND2 i154 (.O(I_31__N_1[31]), .I0(I_31__N_85), .I1(I_31__N_53[31]));
    AND2 i567 (.O(n706), .I0(n293), .I1(n698));
    XOR2 i1_adj_12 (.O(n663), .I0(n62), .I1(I[31]));
    AND2 i570 (.O(n709), .I0(n693), .I1(ENTRADA_c_2));
    AND3 i573 (.O(n712), .I0(PRE[0]), .I1(n4_adj_15), .I2(FUT_2__N_35[1]));
    OR2 i563 (.O(FUT_2__N_38[2]), .I0(n701), .I1(n700));
    AND3 i562 (.O(n701), .I0(n293), .I1(I[2]), .I2(n705));
    AND2 i155 (.O(I_31__N_1[30]), .I0(I_31__N_85), .I1(I_31__N_53[30]));
    AND2 i168 (.O(I_31__N_85), .I0(n308), .I1(n602));
    AND2 i156 (.O(I_31__N_1[29]), .I0(I_31__N_85), .I1(I_31__N_53[29]));
    AND2 i157 (.O(I_31__N_1[28]), .I0(I_31__N_85), .I1(I_31__N_53[28]));
    OR2 i572 (.O(n711), .I0(n710), .I1(n709));
    AND2 i158 (.O(I_31__N_1[27]), .I0(I_31__N_85), .I1(I_31__N_53[27]));
    AND2 i159 (.O(I_31__N_1[26]), .I0(I_31__N_85), .I1(I_31__N_53[26]));
    XOR2 i1_adj_13 (.O(n661), .I0(n60), .I1(I[30]));
    AND2 i160 (.O(I_31__N_1[25]), .I0(I_31__N_85), .I1(I_31__N_53[25]));
    AND2 i161 (.O(I_31__N_1[24]), .I0(I_31__N_85), .I1(I_31__N_53[24]));
    XOR2 i1_adj_14 (.O(n659), .I0(n58_adj_1), .I1(I[29]));
    AND2 i162 (.O(I_31__N_1[23]), .I0(I_31__N_85), .I1(I_31__N_53[23]));
    AND2 i163 (.O(I_31__N_1[22]), .I0(I_31__N_85), .I1(I_31__N_53[22]));
    XOR2 i1_adj_15 (.O(n657), .I0(n56_adj_2), .I1(I[28]));
    AND2 i164 (.O(I_31__N_1[21]), .I0(I_31__N_85), .I1(I_31__N_53[21]));
    AND2 i165 (.O(I_31__N_1[20]), .I0(I_31__N_85), .I1(I_31__N_53[20]));
    XOR2 i1_adj_16 (.O(n605), .I0(I[0]), .I1(I[1]));
    AND2 i166 (.O(I_31__N_1[19]), .I0(I_31__N_85), .I1(I_31__N_53[19]));
    AND2 i169 (.O(I_31__N_1[18]), .I0(I_31__N_85), .I1(I_31__N_53[18]));
    AND2 i170 (.O(I_31__N_1[17]), .I0(I_31__N_85), .I1(I_31__N_53[17]));
    AND2 i171 (.O(I_31__N_1[16]), .I0(I_31__N_85), .I1(I_31__N_53[16]));
    AND2 i172 (.O(I_31__N_1[15]), .I0(I_31__N_85), .I1(I_31__N_53[15]));
    AND2 i173 (.O(I_31__N_1[14]), .I0(I_31__N_85), .I1(I_31__N_53[14]));
    AND2 i174 (.O(I_31__N_1[13]), .I0(I_31__N_85), .I1(I_31__N_53[13]));
    AND2 i175 (.O(I_31__N_1[12]), .I0(I_31__N_85), .I1(I_31__N_53[12]));
    XOR2 i1_adj_17 (.O(n613), .I0(n12), .I1(I[6]));
    AND2 i176 (.O(I_31__N_1[11]), .I0(I_31__N_85), .I1(I_31__N_53[11]));
    AND2 i177 (.O(I_31__N_1[10]), .I0(I_31__N_85), .I1(I_31__N_53[10]));
    AND2 i178 (.O(I_31__N_1[9]), .I0(I_31__N_85), .I1(I_31__N_53[9]));
    AND2 i179 (.O(I_31__N_1[8]), .I0(I_31__N_85), .I1(I_31__N_53[8]));
    AND2 i180 (.O(I_31__N_1[7]), .I0(I_31__N_85), .I1(I_31__N_53[7]));
    AND2 i181 (.O(I_31__N_1[6]), .I0(I_31__N_85), .I1(I_31__N_53[6]));
    AND2 i182 (.O(I_31__N_1[5]), .I0(I_31__N_85), .I1(I_31__N_53[5]));
    AND2 i183 (.O(I_31__N_1[4]), .I0(I_31__N_85), .I1(I_31__N_53[4]));
    AND2 i184 (.O(I_31__N_1[3]), .I0(I_31__N_85), .I1(I_31__N_53[3]));
    AND2 i187 (.O(I_31__N_1[1]), .I0(I_31__N_85), .I1(I_31__N_53[1]));
    AND2 i561 (.O(n700), .I0(n699), .I1(n708));
    XOR2 i1_adj_18 (.O(n655), .I0(n54), .I1(I[27]));
    XOR2 i1_adj_19 (.O(n625), .I0(n24), .I1(I[12]));
    XOR2 i1_adj_20 (.O(n653), .I0(n52), .I1(I[26]));
    XOR2 i1_adj_21 (.O(n651), .I0(n50), .I1(I[25]));
    XOR2 i1_adj_22 (.O(n611), .I0(n10), .I1(I[5]));
    XOR2 i1_adj_23 (.O(n649), .I0(n48), .I1(I[24]));
    XOR2 i1_adj_24 (.O(n647), .I0(n46), .I1(I[23]));
    XOR2 i1_adj_25 (.O(n645), .I0(n44), .I1(I[22]));
    XOR2 i1_adj_26 (.O(n643), .I0(n42), .I1(I[21]));
    OR2 i190 (.O(n4_adj_3), .I0(PRE[0]), .I1(FUT_2__N_38[2]));
    AND2 i576 (.O(n715), .I0(n1_adj_17), .I1(n3));
    AND2 i579 (.O(n718), .I0(n4_adj_15), .I1(n4_adj_3));
    XOR2 i1_adj_27 (.O(n609), .I0(n8), .I1(I[4]));
    AND3 i582 (.O(n721), .I0(n1), .I1(n1_adj_17), .I2(PRE[1]));
    AND3 i585 (.O(n724), .I0(PRE[1]), .I1(FUT_2__N_35[1]), .I2(n1_adj_17));
    XOR2 i1_adj_28 (.O(n633), .I0(n32), .I1(I[16]));
    XOR2 i1_adj_29 (.O(n619), .I0(n18), .I1(I[9]));
    XOR2 i1_adj_30 (.O(n641), .I0(n40), .I1(I[20]));
    OR2 i559 (.O(n698), .I0(n697), .I1(n696));
    XOR2 i138 (.O(n3), .I0(PRE[1]), .I1(n1));
    XOR2 i1_adj_31 (.O(n639), .I0(n38), .I1(I[19]));
    XOR2 i1_adj_32 (.O(n637), .I0(n36), .I1(I[18]));
    AND2 i571 (.O(n710), .I0(I[0]), .I1(ENTRADA_c_3));
    OR2 i569 (.O(n708), .I0(n707), .I1(n706));
    AND2 i558 (.O(n697), .I0(I[0]), .I1(ENTRADA_c_1));
    OR2 i216 (.O(n4), .I0(I[0]), .I1(I[1]));
    XOR2 i1_adj_33 (.O(n635), .I0(n34), .I1(I[17]));
    OR2 i1_adj_34 (.O(n9), .I0(n5), .I1(PRE[2]));
    OR2 i224 (.O(n6), .I0(n4), .I1(I[2]));
    AND2 i568 (.O(n707), .I0(I[1]), .I1(n711));
    OR2 i232 (.O(n8), .I0(n6), .I1(I[3]));
    OR2 i240 (.O(n10), .I0(n8), .I1(I[4]));
    OR2 i248 (.O(n12), .I0(n10), .I1(I[5]));
    OR2 i566 (.O(n705), .I0(n704), .I1(n703));
    OR2 i256 (.O(n14), .I0(n12), .I1(I[6]));
    AND2 i565 (.O(n704), .I0(I[0]), .I1(ENTRADA_c_5));
    OR2 i264 (.O(n16), .I0(n14), .I1(I[7]));
    OR2 i556 (.O(I_31__N_1[0]), .I0(n694), .I1(n693));
    OR2 i272 (.O(n18), .I0(n16), .I1(I[8]));
    OR2 i280 (.O(n20), .I0(n18), .I1(I[9]));
    OR2 i288 (.O(n22), .I0(n20), .I1(I[10]));
    OR2 i296 (.O(n24), .I0(n22), .I1(I[11]));
    OR2 i304 (.O(n26), .I0(n24), .I1(I[12]));
    OR2 i312 (.O(n28), .I0(n26), .I1(I[13]));
    OR2 i320 (.O(n30), .I0(n28), .I1(I[14]));
    OR2 i328 (.O(n32), .I0(n30), .I1(I[15]));
    OR2 i553 (.O(I_31__N_1[2]), .I0(n691), .I1(n690));
    OR2 i336 (.O(n34), .I0(n32), .I1(I[16]));
    OR2 i344 (.O(n36), .I0(n34), .I1(I[17]));
    OR2 i352 (.O(n38), .I0(n36), .I1(I[18]));
    OR2 i360 (.O(n40), .I0(n38), .I1(I[19]));
    XOR2 i1_adj_35 (.O(n627), .I0(n26), .I1(I[13]));
    OR2 i368 (.O(n42), .I0(n40), .I1(I[20]));
    OR2 i376 (.O(n44), .I0(n42), .I1(I[21]));
    OR2 i384 (.O(n46), .I0(n44), .I1(I[22]));
    OR6 i30 (.O(n602), .I0(n58), .I1(n32_adj_12), .I2(n48_adj_9), .I3(n56), 
        .I4(n57), .I5(I[2]));
    OR2 i392 (.O(n48), .I0(n46), .I1(I[23]));
    OR2 i587 (.O(FUT[0]), .I0(n725), .I1(n724));
    OR2 i400 (.O(n50), .I0(n48), .I1(I[24]));
    OR2 i408 (.O(n52), .I0(n50), .I1(I[25]));
    OR2 i416 (.O(n54), .I0(n52), .I1(I[26]));
    OR2 i424 (.O(n56_adj_2), .I0(n54), .I1(I[27]));
    AND2 i557 (.O(n696), .I0(n693), .I1(ENTRADA_c_0));
    AND3 i586 (.O(n725), .I0(n9), .I1(FUT_2__N_38[2]), .I2(n4_adj_15));
    OR2 i432 (.O(n58_adj_1), .I0(n56_adj_2), .I1(I[28]));
    OR2 i440 (.O(n60), .I0(n58_adj_1), .I1(I[29]));
    OR2 i584 (.O(FUT[2]), .I0(n722), .I1(n721));
    OR2 i448 (.O(n62), .I0(n60), .I1(I[30]));
    AND2 i583 (.O(n722), .I0(PRE[2]), .I1(n720));
    OR2 i581 (.O(n720), .I0(n719), .I1(n718));
    OR2 i550 (.O(DISPLAY_c_6), .I0(n688), .I1(n687));
    AND2 i580 (.O(n719), .I0(PRE[1]), .I1(n5));
    OR2 i578 (.O(FUT[1]), .I0(n716), .I1(n715));
    
endmodule
//
// Verilog Description of module XOR2
// module not written out since it is a black-box. 
//

//
// Verilog Description of module INV
// module not written out since it is a black-box. 
//

//
// Verilog Description of module OR2
// module not written out since it is a black-box. 
//

//
// Verilog Description of module AND2
// module not written out since it is a black-box. 
//

//
// Verilog Description of module VCC
// module not written out since it is a black-box. 
//

//
// Verilog Description of module GND
// module not written out since it is a black-box. 
//

//
// Verilog Description of module AND3
// module not written out since it is a black-box. 
//

//
// Verilog Description of module OR6
// module not written out since it is a black-box. 
//

