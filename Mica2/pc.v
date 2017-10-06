`default_nettype none

module pc (
	input wire clk,
	input wire c,
	input wire l,
	input [7:0] i,
	output reg[7:0] Q
);
	
always @(posedge clk) begin
	if (c == 1'b1 && l == 1'b0) begin
		Q = Q + 1;
	end
	if (c == 1'b0 && l == 1'b1) begin
		Q = i;
	end
end
	
endmodule
