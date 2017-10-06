module contador (pc,opc,x,dir,ck);

input				ck;
input				x;
input		[3:0]	dir;
input		[2:0]	opc;
output	[3:0]	pc;

reg		[3:0]	rpc;
assign	pc=rpc;

always 	@ (posedge ck)

begin		

	if	(x==1'b1)
		begin
			if (opc==3'b000)
				begin
				rpc=pc+1;
				end
			if	(opc==3'b010)
				begin
				rpc=dir;
				end
			if	(opc==3'b100)
				begin
				rpc=dir;
				end
		end

	
	if	(x==1'b0)
		begin
			if	(opc==3'b100)
				begin
				rpc=pc+1;
				end
			if	(opc==3'b001)
				begin
				rpc=pc+1;
				end
			if	(opc==3'b011)
				begin
				rpc=dir;
				end
		end
	end
endmodule
