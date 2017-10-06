module sumador (pc, ci, sum);

	input					ci;
	input 	[7:0]		pc;
	output	[7:0]		sum;
	
	reg		[7:0] 	sum;
	
always @(ci)	

	begin
	
		if (ci==1)
			sum = pc+1;
		else
			sum = pc;

	end		
	
endmodule
