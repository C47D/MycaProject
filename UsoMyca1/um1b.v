module	um1b	(ck, m, sl, sg, ls, lc, sv, cl, cn, de, clk, scp);

	input					ck, m, sl, sg, ls, lc;
	output				sv, cl, cn, de, clk;
	output	[3:0]		scp;
	
	wire		[3:0]		wcp;
	wire		[12:0]	wd;
	wire					wck1s;
	wire					wx;
	
	
	assign	clk=wck1s;
	assign	scp=wpc;
	assign	{sv, cl, cn, de}=wd[3:0];
	
	
	divisor	idiv1		(.ck (ck), .ck1s (wck1s));
	memoria	memoria_inst (.address ( {1'b0,wcp} ), .clock ( ck ), .q ( wd ));
	myca1 	imyca1	(.pc (wpc), .opc (wd[12:10]), .x (wd), .dir ({1'b0,wd[6:4]}), .ck(wck1s));
	mux 		imux1		(.s (wd[9:7]), .i ({lc, ls, sg, sl, ~m, m}), .z (wx));
	
endmodule
