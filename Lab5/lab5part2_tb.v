module lab5part2_tb();
	reg X, reset, clk;
	wire [2:0] c, n;
	wire Y, W;  //Y is mealy    W is moorse
	
	lab5part2 uut(.X(X), .reset(reset), .clk(clk), .c(c), .n(n), .Y(Y), .W(W));
	
	initial begin
		clk = 1'b0;
		reset = 1'b0;
		X = 1'b0;
		
		#50;
		reset = 1'b1;
		X = 1'b0;
		
		#50;
		X = 1'b0;
		
		#50;
		X = 1'b1;
		
		#50;
		X = 1'b0;
		$stop;
	end
	
	always begin
		#25;
		clk = ~clk;
	end
endmodule