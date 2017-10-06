module test (i,o,pop, pull);

input 	[1:0] 	i;
input 				pop, pull;
output 	[1:0] 	o;

reg [3:0] rStack;
reg [2:0] rSP;
reg [1:0] ro;
assign o=ro;
assign SP=rSP;
assign Stack=rStack;

always @(pop)

begin
	
	if (rSP !=3'b111)
	begin
		rStack[rSP]=i;
		rSP=SP+1;
	end
	
	else 
	begin
		rStack[rSP]=i;
		rSP=3'b111;
	end
end
	
always @(pull)

begin
		ro=rStack[rSP];
		rSP=SP-1;
end
endmodule
	
