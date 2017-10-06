`default_nettype none

module muxflag (
	input wire[2:0] s,
	input wire[7:0] i,
	output z
);
	
assign z = i[s];
	
endmodule