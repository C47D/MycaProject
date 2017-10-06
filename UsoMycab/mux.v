module mux (s, i, z);

	input		[2:0]	s;
	input		[5:0]	i;
	output			z;
	
	assign	z=i[s];
	
endmodule