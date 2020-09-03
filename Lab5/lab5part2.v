module lab5part2 (X, reset, clk, c, n, Y, W);
	input X,reset,clk;
	output reg [2:0] c;
	output reg [2:0] n;
	output reg Y, W;

	parameter s0 = 3'b000,
				s1 = 3'b001, s2 = 3'b010,
				s3 = 3'b011, s4 = 3'b100,
				s5 = 3'b101, s6 = 3'b110,
				s7 = 3'b111;
	
	always@(c or X)
		begin 
			case(c)
				s0 : begin
				W<=1;

				if(X==1) begin 
					n<=s1;
					Y <= 0;
				end
				else if (X==0)begin 
					n<=s1;
					Y <= 1;
				end
				else n <= s4;
			end
	
			s1 : begin
			W<=0;
			
				if(X==1) begin 
					n<=s2;
					Y <= 1;
				end
				else if (X==0)begin 
					n<=s3;
					Y <= 1;
				end
				else n <=s4;
				
			end
			
			s2 : begin
			W<=1;
			
				if(X==1) begin 
					n<=s7;
					Y <= 1;
				end
				else if (X==0) begin 
					n<=s0;
					Y <= 0;
				end
				else n <=s4;
			
			end
			
			s3 : begin
			W<=1;
			
				if(X==1) begin 
					n<=s7;
					Y <= 1;
				end
				else if (X==0) begin 
					n<=s0;
					Y <= 1;
				end
				else n <=s4;
			
			end
			
			s4 : begin
			W <= 1;
				
				if(X==1) begin 
					n<=s7;
					Y <= 1;
				end
				else if (X==0) begin 
					n<=s0;
					Y <= 1;
				end
				else n <= s4;
			
			end
			
			s5 : begin
			W <= 1;
				
				if(X==1) begin 
					n<=s7;
					Y <= 1;
				end
				else if (X==0) begin 
					n<=s0;
					Y <= 1;
				end
				else n <= s4;
			
			end
			
			s6 : begin
			W <= 1;
				
				if(X==1) begin 
					n<=s7;
					Y <= 1;
				end
				else if (X==0) begin 
					n<=s0;
					Y <= 1;
				end
				else n <= s4;
			end
			
			s7 : begin
			W <= 0;
			
				if(X==1) begin 
					n<=s1;
					Y <= 0;
				end
				else if (X==0) begin 
					n<=s2;
					Y <= 0;
				end
				else n <= s4;
			end
			endcase
		end
	
	
	always@(posedge clk)
		begin 
			if(reset) c<=n;
			else c<=s4;
		end
endmodule
	