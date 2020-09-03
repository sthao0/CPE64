module debounce(clk, dirty, clean);
	input clk; // onboard 64 MHz clock *pin 12
	input dirty; // "dirty" is the glitched, asynchronous, active low push-button signal
	output reg clean; // 1 while the push-button is active (down)
	reg [15:0] cnt;
	wire mcount = &cnt; // true when all bits of cnt are 1's

	always @(posedge clk)
	if(clean != dirty) cnt <= 0; // nothing's going on
	else
	begin
		cnt <= cnt + 1; // something happened, start counting
		if(mcount) clean <= ~clean; // if the counter is maxed, dirty changed!
end
endmodule 