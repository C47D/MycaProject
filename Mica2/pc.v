module	pc (ck, c, l, i, Q);

	input				ck;
	input				c;
	input				l;
	input		[7:0]	i;
	output	[7:0]	Q;
	
	reg 		[7:0]	rQ;
	assign	Q = rQ;
	
	always @(posedge ck)
	begin
		
		if (c==1'b1 && l==1'b0)
			begin
				
				rQ=rQ+1;
				
			end
			
		if (c==1'b0 && l==1'b1)
			begin
				
				rQ=i;
				
			end
	
	end
	
endmodule
