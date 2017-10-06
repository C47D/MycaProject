`default_nettype none

module sumador (
	input [7:0] pc,
	input ci,
	output reg[7:0]sum
);
	
always @(ci) begin
	if (ci == 1)
		sum = pc + 1;
	else
		sum = pc;
	end		
	
endmodule
