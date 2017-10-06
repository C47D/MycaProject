module mux_1 (s, im0, im1, im2, z);

	input		[1:0]	s;
	input		[7:0]	im0, im1, im2;
	output	[7:0]	z;
	
	assign 	z=(s==2'b00)?im0:
					((s==2'b01)?im1:
					  ((s==2'b10)?im2:2'bZZ
					  )
					);
	
endmodule