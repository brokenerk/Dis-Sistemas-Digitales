module reg ( 
	clk,
	clr,
	cd,
	ci,
	c,
	d,
	q
	) ;

input  clk;
input  clr;
input  cd;
input  ci;
input [1:0] c;
input [7:0] d;
inout [7:0] q;
