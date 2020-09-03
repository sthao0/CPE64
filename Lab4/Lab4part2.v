`timescale 1ns	/ 1ps
module Lab4part2(R,	S,	Q,	NQ);
				input R,	S;
				output Q,	NQ;
				
				assign Q = ~(S | NQ);	//	S	(SET)	is	active	LOW
				assign NQ = ~(R | Q);	//	R	(RESET)	is	active	LOW
endmodule