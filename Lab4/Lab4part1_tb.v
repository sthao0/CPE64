`timescale 1ns	/ 1ps
module Lab4part1_tb();
				reg R,	S;
				wire Q,	NQ;
				
				Lab4part1 uut (R,	S,	Q,	NQ);
				
				initial begin
								R = 1'b1;
								S = 1'b1;
								
								#50;
								S = 1'b1;	//	S	=	0;
								R = 1'b1;	//	R	=	0;
								#50;
								S = 1'b1;	//	S	=	0;
								R = 1'b0;	//	R	=	1;
								#50;
								S = 1'b0;	//	S	=	1;
								R = 1'b1;	//	R	=	0;
								#50;
								S = 1'b0;	//	S	=	1;
								R = 1'b0;	//	R	=	1;
								
								#100;
				end
endmodule