module	muxflag	(s, i, z);

	input		[7:0]		i;
	input 	[2:0]		s;
	output				z;
	
	assign 	z=i[s];
	
endmodule