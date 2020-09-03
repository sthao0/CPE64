`timescale 1ns	/ 1ps
module Lab4part6_tb();
	reg CLK, SDin, pin12out;
	wire[7:0] SDout;
	
	integer i,j;
	
	Lab4part6 utt (pin12out, CLK,SDin,SDout);
	
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
	 pin12out = 1;
	for (j=0; j<= 6; j=j+1) begin
	#15;
	#20;
	pin12out = 0;
	end
end
endmodule 