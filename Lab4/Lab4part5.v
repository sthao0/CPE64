module Lab4part5 (reset,CLK,Q);
	
	input wire CLK,reset;
	output reg[3:0] Q;
	wire [3:0] D;

	assign D[0] = ~Q[0]; //FF_0 flip-flop
	assign D[1] = (Q[1] & ~Q[0])|(Q[0] & ~Q[1]); //FF_1 flip-flop
	assign D[2] = (~Q[2] & Q[1] & Q[0])|(Q[2] & ~Q[1])|(Q[2] & ~Q[0]); //FF_2 flip-flop
	assign D[3] = (~Q[3] & Q[2] & Q[0] & Q[1])|(~Q[2] & Q[3])|(~Q[0] & Q[3])|(~Q[1] & Q[3]); //FF_3 flipflop
	always @ (posedge CLK)Q <= D; //shows the D values

	endmodule
