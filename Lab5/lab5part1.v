module lab5part1(X, reset, clk, c, n, Y, W);
	input X, reset, clk;
	output reg [2:0] c;
	output wire [2:0] n;
	output wire Y, W;   // Y is measly and W is Moorse

	assign n[2] = (~c[2] & c[1] & X) | (c[2] & ~c[1] & X) | (c[2] & ~c[0] & X);
	assign n[1] = (c[0] & X) | (~c[2] & X) | (~c[1] & X) | (~c[2] & ~c[1] & c[0]) | (c[2] & c[1] & c[0] & ~X);
	assign n[0] = (c[1] & X) | (c[2] & X) | (~c[2] & ~c[1] & ~X);
	assign Y = (~c[2] & c[0]) | (c[1] & ~c[0] & X) | (c[2] & ~c[1] & X) | (~c[2] & ~c[1] & ~X);
	assign W = (~c[2] & c[1]) | (c[2] & ~c[1]) | (c[2] & ~c[0]);
	
	always @(posedge clk) begin
		if (~reset)
			c <= 3'b100;
		else 
			c <= n;
	end			
endmodule
