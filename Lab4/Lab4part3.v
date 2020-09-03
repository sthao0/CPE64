`timescale 1ns	/ 1ps
module Lab4part3(clk, d, R,	S,	Q,	NQ);
				input clk,	d;
				output R,S, Q,	NQ;
				wire d,clk;


				assign S = ~(clk | ~(d| S) | R);
				assign R = ~(clk | ~(R | ~(d | S)));				
				assign Q = ~(R | NQ);	//	R	(SET)	is	active	LOW
				assign NQ = ~(S | Q);	//	S	(RESET)	is	active	LOW

				
endmodule
