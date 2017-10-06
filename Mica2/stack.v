`default_nettype none

module stack (
	input ck,
	input [7:0] i,
	input [1:0] s,
	output [7:0] T
);
	
reg [3:0] r7;
reg [3:0] r6;
reg [3:0] r5;
reg [3:0] r4;
reg [3:0] r3;
reg [3:0] r2;
reg [3:0] r1;
reg [3:0] r0;
	
assign T = {r7[3], r6[3], r5[3], r4[3], r3[3], r2[3], r1[3], r0[3]};

always @(posedge ck) begin	
	
	if (s == 2'b10) begin
		r7 = {i[7],r7[3:1]};
		r6 = {i[6],r6[3:1]};
		r5 = {i[5],r5[3:1]};
		r4 = {i[4],r4[3:1]};
		r3 = {i[3],r3[3:1]};
		r2 = {i[2],r2[3:1]};
		r1 = {i[1],r1[3:1]};
		r0 = {i[0],r0[3:1]};
	end	
	if (s == 2'b01) begin
		r7 = {r7[2:0],1'b0};
		r6 = {r6[2:0],1'b0};
		r5 = {r5[2:0],1'b0};
		r4 = {r4[2:0],1'b0};
		r3 = {r3[2:0],1'b0};
		r2 = {r2[2:0],1'b0};
		r1 = {r1[2:0],1'b0};
		r0 = {r0[2:0],1'b0};
	end
		
end
	
endmodule
