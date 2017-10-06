module um1bb (ck, M, SL, SG, LS, LC, SV, CL, CN, DE, CLK, SCP);

	input					ck;
	input					M;
	input					SL;
	input					SG;
	input					LS;
	input					LC;
	
	output				SV;
	output				CL;
	output				CN;
	output				DE;
	output				CLK;
	output	[3:0]		SCP;
	
	wire 					wCK1S;
	wire					wX;
	wire		[3:0]		wCP;
	wire		[12:0]	wD;
	
	assign	CLK=wCK1S;
	assign	SCP=wCP;
	assign	{SV,CL,CN,DE}=wD[3:0];
	
	divisor	idiv1 (.ck(ck), .ck1s(wCK1S));
	mux imux1 (.s(wD[9:7]), .i({LC,LS,SG,SL,~M,M}), .z(wX));
	memoria	memoria_inst (	.address({1'b0,wCP}), .clock (ck), .q (wD));
	myca1 imyca1 (.pc(wCP), .opc(wD[12:10]), .x(wX), .dir({1'b0,wD[6:4]}), .ck(wCK1S));
	
endmodule
