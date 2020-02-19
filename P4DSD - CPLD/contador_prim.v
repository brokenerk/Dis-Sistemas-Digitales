// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Mon May 07 19:24:33 2018
//
// Verilog Description of module contador
//

module contador (CLR, CLK, C, Q);   // contador.vhd(6[8:16])
    input CLR;   // contador.vhd(9[2:5])
    input CLK;   // contador.vhd(9[7:10])
    input C;   // contador.vhd(9[12:13])
    output [9:0]Q;   // contador.vhd(10[2:3])
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // contador.vhd(9[7:10])
    
    wire CLR_c, C_c, Q_c_9, Q_c_8, Q_c_7, Q_c_6, Q_c_5, Q_c_4, 
        Q_c_3, Q_c_2, Q_c_1, Q_c_0, n73, n94, n87, n80, pwr, 
        n101, n108, n115, n46, n47, n48, n49, n50, n51, n52, 
        n53, n54, n55, gnd, n66, n57;
    
    AND2 i69 (.O(n87), .I0(n80), .I1(Q_c_4));
    OBUF Q_pad_8 (.O(Q[8]), .I0(Q_c_8));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    AND2 i48 (.O(n66), .I0(n57), .I1(Q_c_1));
    IBUF C_pad (.O(C_c), .I0(C));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    AND2 i55 (.O(n73), .I0(n66), .I1(Q_c_2));
    AND2 i39 (.O(n57), .I0(Q_c_0), .I1(C_c));
    XOR2 i45 (.O(n54), .I0(n57), .I1(Q_c_1));
    XOR2 i52 (.O(n53), .I0(n66), .I1(Q_c_2));
    XOR2 i59 (.O(n52), .I0(n73), .I1(Q_c_3));
    XOR2 i66 (.O(n51), .I0(n80), .I1(Q_c_4));
    DFFR cnt_15__i10 (.Q(Q_c_9), .D(n46), .CLK(CLK_c), .R(CLR_c)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/ispLEVER_Classic2_0/lse/vhdl_packages/syn_unsi.vhd(118[20:31])
    XOR2 i101 (.O(n46), .I0(n115), .I1(Q_c_9));
    XOR2 i87 (.O(n48), .I0(n101), .I1(Q_c_7));
    XOR2 i37 (.O(n55), .I0(Q_c_0), .I1(C_c));
    XOR2 i73 (.O(n50), .I0(n87), .I1(Q_c_5));
    XOR2 i94 (.O(n47), .I0(n108), .I1(Q_c_8));
    XOR2 i80 (.O(n49), .I0(n94), .I1(Q_c_6));
    GND i109 (.X(gnd));
    DFFR cnt_15__i9 (.Q(Q_c_8), .D(n47), .CLK(CLK_c), .R(CLR_c)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/ispLEVER_Classic2_0/lse/vhdl_packages/syn_unsi.vhd(118[20:31])
    DFFR cnt_15__i8 (.Q(Q_c_7), .D(n48), .CLK(CLK_c), .R(CLR_c)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/ispLEVER_Classic2_0/lse/vhdl_packages/syn_unsi.vhd(118[20:31])
    DFFR cnt_15__i7 (.Q(Q_c_6), .D(n49), .CLK(CLK_c), .R(CLR_c)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/ispLEVER_Classic2_0/lse/vhdl_packages/syn_unsi.vhd(118[20:31])
    DFFR cnt_15__i6 (.Q(Q_c_5), .D(n50), .CLK(CLK_c), .R(CLR_c)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/ispLEVER_Classic2_0/lse/vhdl_packages/syn_unsi.vhd(118[20:31])
    DFFR cnt_15__i5 (.Q(Q_c_4), .D(n51), .CLK(CLK_c), .R(CLR_c)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/ispLEVER_Classic2_0/lse/vhdl_packages/syn_unsi.vhd(118[20:31])
    DFFR cnt_15__i4 (.Q(Q_c_3), .D(n52), .CLK(CLK_c), .R(CLR_c)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/ispLEVER_Classic2_0/lse/vhdl_packages/syn_unsi.vhd(118[20:31])
    DFFR cnt_15__i3 (.Q(Q_c_2), .D(n53), .CLK(CLK_c), .R(CLR_c)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/ispLEVER_Classic2_0/lse/vhdl_packages/syn_unsi.vhd(118[20:31])
    DFFR cnt_15__i2 (.Q(Q_c_1), .D(n54), .CLK(CLK_c), .R(CLR_c)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/ispLEVER_Classic2_0/lse/vhdl_packages/syn_unsi.vhd(118[20:31])
    DFFR cnt_15__i1 (.Q(Q_c_0), .D(n55), .CLK(CLK_c), .R(CLR_c)) /* synthesis syn_use_carry_chain=1 */ ;   // C:/ispLEVER_Classic2_0/lse/vhdl_packages/syn_unsi.vhd(118[20:31])
    OBUF Q_pad_9 (.O(Q[9]), .I0(Q_c_9));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    IBUF CLK_pad (.O(CLK_c), .I0(CLK));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    IBUF CLR_pad (.O(CLR_c), .I0(CLR));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(186[8:12])
    OBUF Q_pad_0 (.O(Q[0]), .I0(Q_c_0));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    OBUF Q_pad_1 (.O(Q[1]), .I0(Q_c_1));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    OBUF Q_pad_2 (.O(Q[2]), .I0(Q_c_2));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    OBUF Q_pad_3 (.O(Q[3]), .I0(Q_c_3));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    OBUF Q_pad_4 (.O(Q[4]), .I0(Q_c_4));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    OBUF Q_pad_5 (.O(Q[5]), .I0(Q_c_5));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    OBUF Q_pad_6 (.O(Q[6]), .I0(Q_c_6));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    OBUF Q_pad_7 (.O(Q[7]), .I0(Q_c_7));   // C:/ispLEVER_Classic2_0/lse/userware/NT/SYNTHESIS_HEADERS/mach.v(270[8:12])
    VCC i110 (.X(pwr));
    AND2 i62 (.O(n80), .I0(n73), .I1(Q_c_3));
    AND2 i97 (.O(n115), .I0(n108), .I1(Q_c_8));
    AND2 i90 (.O(n108), .I0(n101), .I1(Q_c_7));
    AND2 i83 (.O(n101), .I0(n94), .I1(Q_c_6));
    AND2 i76 (.O(n94), .I0(n87), .I1(Q_c_5));
    
endmodule
//
// Verilog Description of module AND2
// module not written out since it is a black-box. 
//

//
// Verilog Description of module XOR2
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

