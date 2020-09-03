module Lab4part6 (pin12out, CLK,SDin,SDout);
	input CLK, SDin,pin12out;
	output reg [7:0] SDout;

	debounce g0(pin12out,CLK, clean);

	always @ (posedge clean) //begins on the positive edge of CLK
	begin
	SDout <= SDout << 1; //cycles through all 8 registers
	SDout[0] <= SDin; //assigns the first register
	
end
endmodule 