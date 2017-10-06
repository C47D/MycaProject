module dr (b, ci, S);

	input		[7:0] b;
	input				ci;
	output	[7:0]	S;
	
	assign S=(ci==1'h0)?b:b+1;
	
endmodule