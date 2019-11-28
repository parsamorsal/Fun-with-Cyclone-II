module top(
	output [6:0] p0_adr_7seg,
	output [6:0] p0_load_7seg,
	output [6:0] p1_adr_7seg,
	output [6:0] p1_load_7seg,
	input clk50Mhz,
	input reset,
	input pb,
	input [7:0] packet
);

	wire [1:0] index;
	wire is_hit, port;

	reg [26:0]counter;
	reg slow_clk;

    always @(posedge clk50Mhz or negedge reset)
        if (!reset) begin
           counter <= 26'h00000;
           slow_clk <= 1'b0;
        end
        else if (counter < 499999) begin
           counter <= counter + 1'b1;
        end
        else begin
          counter <= 26'h00000;
          slow_clk <= ~slow_clk;
        end

	cam adr_lookup(.addr(index), .is_hit(is_hit), .reset(reset), .clk(slow_clk), .data_in(packet[3:0]));
	ram port_lookup(.address(index), .clock(slow_clk),.wren(1'b0), .q(port));

	reg [3:0] p0_adr;
	reg [3:0] p0_load;
	reg [3:0] p1_adr;
	reg [3:0] p1_load;
	
	debounce db(.out(clk_pb), .pb(pb), .clk_50MHZ(clk50Mhz), .reset(reset));
	//assign clk_pb = pb;

	always @(posedge clk_pb or negedge reset) begin
		if(~reset) begin
			p0_adr <= 0;
			p0_load <= 0;
			p1_adr <= 0;
			p1_load <= 0;
		end else begin
			if (is_hit) begin
				if (port == 0) begin
					p0_load <= packet[7:4];
					p0_adr <= packet[3:0];
				end
				else begin
					p1_load <= packet[7:4];
					p1_adr <= packet[3:0];
				end
			end
		end
	end

	segment p0_addr_7seg_controller(p0_adr_7seg, p0_adr);
	segment p1_addr_7seg_controller(p1_adr_7seg, p1_adr);
	segment p0_load_7seg_controller(p0_load_7seg, p0_load);
	segment p1_load_7seg_controller(p1_load_7seg, p1_load);

endmodule