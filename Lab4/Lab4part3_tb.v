`timescale 1ns	/ 1ps
module Lab4part3_tb();
				reg clk,	d;
				wire Q, NQ;
				
				Lab4part3 uut (clk, d, R, S, Q,NQ);
				
				initial begin
								clk = 1'b1;
								d = 1'b1;
								
								#25;
								d = 1'b1;	//	S	=	0;
								#25;
								clk = 1'b1;	//	R	=	0;
								#25;
								d = 1'b1;//	S	=	0;
								#25;
								clk = 1'b0;	//	R	=	1;
								#25;
								d = 1'b0;	//	S	=	1;
								#25;
								clk = 1'b1;	//	R	=	0;
								#25;
								d = 1'b0;	//	S	=	1;
								#25;
								clk = 1'b0;	//	R	=	1;
								
								#25;
				end
endmodule