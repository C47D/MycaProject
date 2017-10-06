`default_nettype none

module usomycaII (
	input wire ck,
	input wire M,
	input wire SL,
	input wire SG,
	input wire LS,
	input wire LC,
	input wire SE,
	output SV,
	output CL,
	output CN,
	output DE,
	output clk,
	output [7:0] SCP
);
	
wire wX; // Cable del mux de flag a X de myca II
wire [12:0] wD;	// Bus de datos de 13 bits de las salidas de la memoria
wire wclk; // Bus de clk de 1 segundo
wire [7:0] wPC;	// Bus de PC
	
assign clk = wclk; // Señal para checar el clk de 1 segundo
assign {SV, CL, CN, DE} = wD[3:0]; // Señales de salida de la memoria		
assign SCP = wPC; // Señal para checar el PC

MycaII imycaII (
	.ck(ck),
	.x(wX),
	.opc(wD[12:10]),
	.DIRB(wD[6:4]),
	.DIRI(),
	.PC(wPC),
	.clk(wclk)
);
	
rom	rom_inst (
	.address (wPC),
	.clock (ck),
	.q (wD)
);
	
muxflag	muxflag1 (
	.s(wD[9:7]),
	.i({SE, LC, LS, SG, SL, ~M, M}),
	.z(wX)
);		
		
endmodule
