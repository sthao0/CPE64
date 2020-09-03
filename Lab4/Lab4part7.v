module Lab4part7(clk, dirty, serial_in, p_load, SHL, SHR, ROR, ROL, Q);
	input clk, dirty, serial_in, p_load, SHL, SHR, ROR, ROL;
	output reg [7:0]Q;
	wire [7:0]P;
	wire clean;

	assign P = 8'b01010101; //assigns a value to each input
	debounce (clk,dirty,clean);
	always @(posedge clean)
	case ({p_load, SHL, SHR, ROR, ROL})
	5'b10000: begin Q<=P; end
	5'b01000: begin Q<=Q<<1; Q[0]<=serial_in; end
	5'b00100: begin Q<=Q>>1; Q[7]<=serial_in; end
	5'b00010: begin Q<=Q>>1; Q[7]<=Q[0]; end
	5'b00001: begin Q<=Q<<1; Q[0]<=Q[7]; end

	default Q<=Q;
	endcase
endmodule
