module mux (
	input wire [2:0] s,
	input wire [5:0] i,
	output z
);	

assign z = i[s];
		
endmodule
	