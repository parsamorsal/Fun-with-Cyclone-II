module fsm(
  	output t,
  	output f,
  	input clk,
  	input reset,
  	input i);
	
	reg[2:0] count;

	assign t = count >= 3;
	assign f = count >= 5;

	always @(posedge clk or negedge reset) begin
		if (!reset)
			count <= 0;
		else begin
			if (i)
				count <= count < 5 ? count + 1 : 5;
			else
				count <= 0;
		end
	end

endmodule 
