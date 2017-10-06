module mux_1 (
	input [1:0] s,
	input [7:0] im0,
	input [7:0] im1,
	input [7:0] im2,
	output [7:0] z
);

assign z = (s==2'b00) ? im0:
	((s==2'b01)?im1:
	((s==2'b10)?im2:2'bZZ)
);
	
endmodule