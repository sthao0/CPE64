`timescale 1ns	/ 1ps
module Lab4part4_tb();
				reg pr,cr,clk,d;
				wire q, qn;
				integer i;
				Lab4part4 uut (pr,cr,clk,d,q,qn);
				
				initial begin
					for(i = 0; i<= 15; i= i +1)
						begin
							{pr,cr,clk,d} <= i;
							#50;
							#25;
							#100;
						end
						
						$stop;
				end
				
endmodule