// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Thu May 24 19:35:08 2018
//
// Verilog Description of module contreg
//

module contreg (clk, clr, i, e, q);   // contreg.vhd(6[8:15])
    input clk;   // contreg.vhd(7[8:11])
    input clr;   // contreg.vhd(7[12:15])
    input [7:0]i;   // contreg.vhd(8[3:4])
    input [3:0]e;   // contreg.vhd(9[3:4])
    output [3:0]q;   // contreg.vhd(10[3:4])
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // contreg.vhd(7[8:11])
    
    wire pwr, gnd, clr_c, i_c_7, i_c_6, i_c_5, i_c_4, i_c_3, 
        i_c_2, i_c_1, i_c_0, e_c_3, e_c_2, e_c_1, e_c_0, q_c_2, 
        q_c_1, q_c_0, q_c_3;
    wire [3:0]gray;   // contreg.vhd(15[8:12])
    wire [2:0]c;   // contreg.vhd(16[8:9])
    wire [3:0]contador;   // contreg.vhd(17[8:16])
    
    wire n110, n8, n9, n13, n15, n17, n418, n21;
    wire [2:0]c_2__N_13;
    wire [2:0]c_2__N_4;
    
    wire n436;
    wire [3:0]contador_3__N_20;
    wire [4:0]contador_3__N_16;
    
    wire n162, n435, n4, n479, n304, n107, n449, n433, n440, 
        n114, n115, n478, n148, n169, n476, n2, n437, n475, 
        n430, n443, n434, n432, n6, n250, n474, n424, n420, 
        n473, n472, n426, n470, n330, n446, n469, n326, n471, 
        n4_adj_1, n5, n321, n416, n465, n462, n428, n468, n431, 
        n359, n297, n295, n340, n318, n315, n467, n466, n464, 
        n463, n11, n477, n461, n429, n415, n460, n427, n459, 
        n457, n456, n4_adj_2, n422, n454, n453, n451, n450, 
        n448, n447, n445, n444, n442, n441, n439, n438, n2_adj_3, 
        n423, n413;
    
    AND2 i364 (.O(n430), .I0(n250), .I1(n479));
    AND2 i399 (.O(n465), .I0(n433), .I1(n429));
    IBUF i_pad_6 (.O(i_c_6), .I0(i[6]));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    IBUF i_pad_7 (.O(i_c_7), .I0(i[7]));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    AND2 i396 (.O(n462), .I0(n5), .I1(n461));
    OR2 i250 (.O(c_2__N_4[0]), .I0(i_c_1), .I1(c_2__N_13[0]));
    XOR2 i1 (.O(n297), .I0(n6), .I1(q_c_3));
    AND2 i1_adj_1 (.O(n4_adj_2), .I0(c[0]), .I1(n2));
    OR2 i401 (.O(n467), .I0(n466), .I1(n465));
    IBUF clr_pad (.O(clr_c), .I0(clr));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    DFFCR contador_i0_i3 (.Q(q_c_3), .D(n448), .CLK(clk_c), .CE(n304), 
          .R(clr_c));   // contreg.vhd(66[3] 87[10])
    IBUF i_pad_4 (.O(i_c_4), .I0(i[4]));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    DFFCR contador_i0_i2 (.Q(contador[2]), .D(n445), .CLK(clk_c), .CE(n304), 
          .R(clr_c));   // contreg.vhd(66[3] 87[10])
    DFFCR contador_i0_i1 (.Q(contador[1]), .D(n432), .CLK(clk_c), .CE(n304), 
          .R(clr_c));   // contreg.vhd(66[3] 87[10])
    DFFCR contador_i0_i0 (.Q(contador[0]), .D(n439), .CLK(clk_c), .CE(n304), 
          .R(clr_c));   // contreg.vhd(66[3] 87[10])
    IBUF i_pad_1 (.O(i_c_1), .I0(i[1]));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    IBUF clk_pad (.O(clk_c), .I0(clk));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    AND2 i403 (.O(n469), .I0(n114), .I1(contador[1]));
    XOR2 i1_adj_2 (.O(n295), .I0(n4), .I1(contador[2]));
    OR2 i404 (.O(n470), .I0(n469), .I1(n468));
    OBUF q_pad_0 (.O(q[0]), .I0(q_c_0));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    AND2 i393 (.O(n459), .I0(n433), .I1(contador_3__N_20[0]));
    IBUF i_pad_2 (.O(i_c_2), .I0(i[2]));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    IBUF i_pad_3 (.O(i_c_3), .I0(i[3]));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    AND2 i390 (.O(n456), .I0(n449), .I1(contador[2]));
    OBUF q_pad_1 (.O(q[1]), .I0(q_c_1));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    OR2 i244 (.O(n13), .I0(i_c_5), .I1(n9));
    AND2 i246 (.O(n17), .I0(n315), .I1(n13));
    AND2 i365 (.O(n431), .I0(n107), .I1(e_c_1));
    XOR2 i146 (.O(gray[1]), .I0(contador[2]), .I1(contador[1]));
    OBUF q_pad_2 (.O(q[2]), .I0(q_c_2));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    IBUF i_pad_5 (.O(i_c_5), .I0(i[5]));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    IBUF e_pad_0 (.O(e_c_0), .I0(e[0]));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    IBUF e_pad_1 (.O(e_c_1), .I0(e[1]));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    IBUF e_pad_2 (.O(e_c_2), .I0(e[2]));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    IBUF e_pad_3 (.O(e_c_3), .I0(e[3]));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    IBUF i_pad_0 (.O(i_c_0), .I0(i[0]));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    OBUF q_pad_3 (.O(q[3]), .I0(q_c_3));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    AND3 i1_adj_3 (.O(n415), .I0(n359), .I1(n8), .I2(n315));
    OR2 i366 (.O(n432), .I0(n431), .I1(n430));
    XOR2 i144 (.O(gray[2]), .I0(q_c_3), .I1(contador[2]));
    AND2 i406 (.O(n472), .I0(n114), .I1(contador[2]));
    OR2 i407 (.O(n473), .I0(n472), .I1(n471));
    OR2 i262 (.O(n8), .I0(i_c_6), .I1(i_c_7));
    AND2 i387 (.O(n453), .I0(n449), .I1(contador[1]));
    XOR2 i23 (.O(n420), .I0(c_2__N_4[2]), .I1(c_2__N_4[1]));
    OR3 i1_adj_4 (.O(n413), .I0(c_2__N_4[2]), .I1(c_2__N_4[1]), .I2(c_2__N_4[0]));
    AND2 i271 (.O(c_2__N_4[2]), .I0(n340), .I1(n15));
    AND2 i380 (.O(n446), .I0(n250), .I1(n473));
    AND2 i372 (.O(n438), .I0(n107), .I1(e_c_0));
    OR2 i373 (.O(n439), .I0(n438), .I1(n437));
    OR2 i247 (.O(n21), .I0(i_c_3), .I1(n17));
    AND2 i409 (.O(n475), .I0(c[0]), .I1(contador[2]));
    AND2 i375 (.O(n441), .I0(n110), .I1(contador_3__N_20[3]));
    AND2 i368 (.O(n434), .I0(n433), .I1(n442));
    OR2 i376 (.O(n442), .I0(n441), .I1(n440));
    AND2 i369 (.O(n435), .I0(n115), .I1(contador[0]));
    AND2 i378 (.O(n444), .I0(n107), .I1(e_c_2));
    AND2 i249 (.O(c_2__N_13[0]), .I0(n318), .I1(n21));
    OR2 i379 (.O(n445), .I0(n444), .I1(n443));
    OR2 equal_47_i5 (.O(n5), .I0(n4_adj_1), .I1(c[0]));
    AND2 i377 (.O(n443), .I0(n250), .I1(n470));
    AND2 i381 (.O(n447), .I0(n107), .I1(e_c_3));
    OR2 i382 (.O(n448), .I0(n447), .I1(n446));
    AND2 i384 (.O(n450), .I0(n449), .I1(contador[0]));
    AND2 i256 (.O(n326), .I0(c_2__N_4[2]), .I1(c[1]));
    AND2 i374 (.O(n440), .I0(n426), .I1(contador_3__N_16[3]));
    AND2 i252 (.O(c[0]), .I0(n321), .I1(c_2__N_4[0]));
    AND2 i385 (.O(n451), .I0(n148), .I1(gray[0]));
    AND2 i255 (.O(n250), .I0(n321), .I1(n413));
    OR2 i386 (.O(q_c_0), .I0(n451), .I1(n450));
    AND2 i388 (.O(n454), .I0(n148), .I1(gray[1]));
    AND2 i258 (.O(n115), .I0(n326), .I1(c[0]));
    OR2 i370 (.O(n436), .I0(n435), .I1(n434));
    AND3 i1_adj_5 (.O(n110), .I0(n420), .I1(n321), .I2(n2_adj_3));
    AND2 i2 (.O(c[1]), .I0(c_2__N_4[1]), .I1(n321));
    XOR2 i152 (.O(gray[0]), .I0(contador[1]), .I1(contador[0]));
    OR2 i118 (.O(n6), .I0(n4), .I1(contador[2]));
    OR2 i1_adj_6 (.O(n416), .I0(i_c_2), .I1(i_c_3));
    OR2 i1_adj_7 (.O(c_2__N_13[1]), .I0(n416), .I1(n415));
    OR2 i410 (.O(n476), .I0(n475), .I1(n474));
    INV i357 (.O(n423), .I0(n422));
    AND2 i2_adj_8 (.O(c[2]), .I0(c_2__N_4[2]), .I1(n321));
    OR4 i3 (.O(n15), .I0(i_c_5), .I1(i_c_4), .I2(i_c_6), .I3(i_c_7));
    OR2 i389 (.O(q_c_1), .I0(n454), .I1(n453));
    INV i2_adj_9 (.O(n2_adj_3), .I0(c[0]));
    INV i226 (.O(contador_3__N_16[2]), .I0(n295));
    XOR2 i356 (.O(n422), .I0(n110), .I1(contador[1]));
    INV i270 (.O(n340), .I0(n418));
    AND2 i361 (.O(n427), .I0(n426), .I1(contador_3__N_16[2]));
    INV i228 (.O(contador_3__N_16[3]), .I0(n297));
    INV i293 (.O(n359), .I0(i_c_5));
    AND2 i391 (.O(n457), .I0(n148), .I1(gray[2]));
    OR2 i392 (.O(q_c_2), .I0(n457), .I1(n456));
    INV i383 (.O(n449), .I0(n148));
    INV i260 (.O(n330), .I0(i_c_1));
    AND2 i394 (.O(n460), .I0(n115), .I1(contador[1]));
    AND2 i1_adj_10 (.O(n148), .I0(n2), .I1(c[2]));
    OR2 i359 (.O(n304), .I0(n424), .I1(c[2]));
    AND2 i412 (.O(n478), .I0(n326), .I1(n476));
    INV i172 (.O(n9), .I0(i_c_6));
    INV equal_47_i6 (.O(n114), .I0(n5));
    INV i257 (.O(n4_adj_1), .I0(n326));
    INV equal_40_i6 (.O(n107), .I0(n250));
    OR2 i110 (.O(n4), .I0(contador[0]), .I1(contador[1]));
    AND2 i85 (.O(n169), .I0(n162), .I1(contador[2]));
    OR2 i1_adj_11 (.O(n418), .I0(n416), .I1(i_c_1));
    INV i360 (.O(n426), .I0(n110));
    OR2 i363 (.O(n429), .I0(n428), .I1(n427));
    INV i128 (.O(n2), .I0(c[1]));
    INV i74 (.O(contador_3__N_20[0]), .I0(contador[0]));
    INV i367 (.O(n433), .I0(n115));
    OR2 i395 (.O(n461), .I0(n460), .I1(n459));
    XOR2 i34 (.O(n11), .I0(n423), .I1(contador[0]));
    AND2 i371 (.O(n437), .I0(n250), .I1(n464));
    OR2 i413 (.O(n479), .I0(n478), .I1(n477));
    INV i358 (.O(n424), .I0(n4_adj_2));
    INV i251 (.O(n321), .I0(i_c_0));
    AND2 i411 (.O(n477), .I0(n4_adj_1), .I1(n11));
    XOR2 i83 (.O(contador_3__N_20[2]), .I0(n162), .I1(contador[2]));
    AND2 i78 (.O(n162), .I0(contador[0]), .I1(contador[1]));
    AND2 i397 (.O(n463), .I0(n114), .I1(q_c_3));
    OR2 i398 (.O(n464), .I0(n463), .I1(n462));
    INV i248 (.O(n318), .I0(i_c_2));
    INV i245 (.O(n315), .I0(i_c_4));
    AND2 i408 (.O(n474), .I0(n2_adj_3), .I1(contador[0]));
    AND2 i1_adj_12 (.O(c_2__N_4[1]), .I0(n330), .I1(c_2__N_13[1]));
    AND2 i405 (.O(n471), .I0(n5), .I1(n436));
    AND2 i402 (.O(n468), .I0(n5), .I1(n467));
    XOR2 i90 (.O(contador_3__N_20[3]), .I0(n169), .I1(q_c_3));
    AND2 i400 (.O(n466), .I0(n115), .I1(q_c_3));
    AND2 i362 (.O(n428), .I0(n110), .I1(contador_3__N_20[2]));
    GND i354 (.X(gnd));
    VCC i355 (.X(pwr));
    
endmodule
//
// Verilog Description of module AND2
// module not written out since it is a black-box. 
//

//
// Verilog Description of module OR2
// module not written out since it is a black-box. 
//

//
// Verilog Description of module XOR2
// module not written out since it is a black-box. 
//

//
// Verilog Description of module AND3
// module not written out since it is a black-box. 
//

//
// Verilog Description of module OR3
// module not written out since it is a black-box. 
//

//
// Verilog Description of module INV
// module not written out since it is a black-box. 
//

//
// Verilog Description of module OR4
// module not written out since it is a black-box. 
//

//
// Verilog Description of module GND
// module not written out since it is a black-box. 
//

//
// Verilog Description of module VCC
// module not written out since it is a black-box. 
//

