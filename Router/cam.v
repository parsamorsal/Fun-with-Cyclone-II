module cam (
	output reg [1:0] addr,
	output reg is_hit,
	input clk,
	input reset,
	input [3:0] data_in
); 

	parameter value0 = 4'b1011;
	parameter value1 = 4'b1011;
	parameter value2 = 4'b1110;
	parameter value3 = 4'b0001;

	assign match0 = data_in == value0;
	assign match1 = data_in == value1;
	assign match2 = data_in == value2;
	assign match3 = data_in == value3;

	always @(posedge clk or negedge reset) begin
		if(~reset) begin
			addr <= 0;
			is_hit <= 0;
		end else begin
			is_hit <= match0 | match1 | match2 | match3;
			addr <= match0 ? 0 :
					match1 ? 1 :
					match2 ? 2 :
					3;
		end
	end

endmodule // cam