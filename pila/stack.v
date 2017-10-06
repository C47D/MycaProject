module stack (DataIO, Push, Pop, SP, Full, Empty, Err); 

inout 	[3:0] 	DataIO;
input					Push,Pop;
output				Full, Empty, Err;
output 	[2:0]		SP;

reg 					Empty, Err, Full;
reg 		[2:0]		SP;
reg 		[3:0]		Stack[7:0];
reg 		[3:0]		DataR;

wire		[3:0] #(0) DataIO = DataR;

always @(posedge Push or posedge Pop)

begin
end

always @(negedge Pop)

			begin

				DataR = 4'bzzzz;

			end

		if (Push==1) begin
		
			if(Empty==1) begin
			
				Stack[SP] = DataIO;
				Empty = 0;
				
				if (Err==1)
				
					Err=0;
					
				end
				
				else
				
				if (Full==1) begin
				
				Stack[SP] = DataIO;
				Err=1;
				
				end
				
				else
				begin
				SP = SP + 1;
				Stack[SP] = DataIO;
				if (SP== 3'b111)
				
					Full=1;
					
				end
				
			end
				
				
	if (Pop==1) begin
		
			if(SP==3'b000) &&  (Empty!=1) begin
			
				DataR=Stack[SP];
				Empty = 1;
													end
													
				else
				if (Empty==1) begin
				DataR = Stack[SP];
				Err=1;
									end
									
				else
				begin
					DataR = Stack[SP];
					
					if (SP !=3'b0000)
					
						SP=SP-1;
						
					if (Err==1) Err=0;
					if (Full==1) Full=0;
					
				end
				
			end

endmodule