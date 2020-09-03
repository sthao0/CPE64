`timescale 1ns	/ 1ps
module Lab4part5_tb();
	reg CLK,reset;
	wire[3:0]Q,D;
	
	integer i,j;
	
	Lab4part5 utt (CLK,reset, Q);
	
	initial begin
	CLK = 0;
	for (i=0; i <=99; i = i+1)
	begin
		#5;
		#25;
	CLK = ~CLK;
	end
end

	initial begin
	reset = 1;
	for (j=0; j<= 6; j=j+1) begin
	#15;
	#20;
	reset = 0;
	end
end
endmodule 