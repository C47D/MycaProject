`default_nettype none

module mrm (
	input [3:0] a,
	output [6:0] D
);

assign D=(a==4'h0)?7'h02:
	((a==4'h1)?7'h02:
	((a==4'h2)?7'h00:
	((a==4'h3)?7'h02:
	((a==4'h4)?7'h05:
	((a==4'h5)?7'h05:
	((a==4'h6)?7'h00:
	((a==4'h7)?7'h05:
	((a==4'h8)?7'h02:
	((a==4'h9)?7'h05:
	((a==4'hA)?7'h02:
	((a==4'hB)?7'h55:
	((a==4'hC)?7'h05:
	((a==4'hD)?7'h29:
	((a==4'hE)?7'h02:
	((a==4'hF)?7'h51:2'hZZ)
	))))))))))))));

endmodule			