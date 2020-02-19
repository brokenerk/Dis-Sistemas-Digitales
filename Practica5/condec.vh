module condec ( 
	clk,
	clr,
	c,
	e,
	display
	) ;

input  clk;
input  clr;
input [1:0] c;
input [3:0] e;
inout [6:0] display;
