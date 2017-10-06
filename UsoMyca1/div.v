module	div	(ck, ck1s);

	input			ck;
	output		ck1s;
	
reg				rck1s;
reg	[24:0]	rcont;

assign	ck1s = rck1s;

always	@(posedge ck)
	begin
			
			if (rcont==25'h17d783f)
			
				begin
					
					//rcont=25'h17d783f;
					rcont=25'h0000000;
					rck1s=~rck1s;
					
				end
				
			else
			
				begin
				
					rcont=rcont+1;
					
				end
				
		end
		
endmodule 