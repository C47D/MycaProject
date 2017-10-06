module contador (
	input ck,
	input x,
	input [2:0] opc,
	input [3:0] dir,
	output reg[3:0] pc
);

always @ (posedge ck) begin
	if (x == 1'b1) begin
		if (opc==3'b000) begin
			pc <= pc + 1;
		end
		if (opc==3'b010) begin
			pc = dir;
		end
		if (opc==3'b100) begin
			pc = dir;
		end
	end
	
	if (x==1'b0) begin
		if (opc==3'b011) begin
			pc = dir;
		end
		if (opc==3'b100) begin
			pc <= pc + 1;
		end
		if (opc==3'b001) begin
			pc = pc + 1;
		end
	end
end

endmodule
