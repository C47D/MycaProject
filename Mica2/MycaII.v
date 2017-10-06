`default_nettype none

module MycaII (
	input ck,
	input x,
	input [2:0] opc,
	input [7:0] DIRB,
	input [7:0] DIRI,
	output [7:0] PC,
	output clk
);

wire wck1s;
wire [7:0] wdr;
wire [7:0] wstk;
wire [7:0] wmux;
wire [6:0] wmap;
	
assign clk = wck1s;
	
div	div1 (
	.ck(ck),
	.ck1s(wck1s)
);

mrm mrm1 (
	.a({opc,x}),
	.D(wmap)
);

dr dr1 (
	.b(PC),
	.ci(wmap[6]),
	.S(wdr)
);

stack stack1 (
	.ck(wck1s),
	.i(wdr),
	.s({wmap[4],wmap[5]}),
	.T(wstk)
);

mux_1 mux1 (
	.s(wmap[3:2]),
	.im0(DIRI),
	.im1(DIRB),
	.im2(wstk),
	.z(wmux)
);

pc pc1 (
	.ck(wck1s),
	.c(wmap[1]),
	.l(wmap[0]),
	.i(wmux),
	.Q(PC)
);
		
endmodule
