module bcd2binary(bin, bcd);
	parameter k=2;
	output[k * 4 - 1:0] bin;
	input[k * 4 - 1:0] bcd;

	wire[k * 4 - 1: 0] weighted[k-1:0];
	wire[k * 4 - 1: 0] sum[k-1:0];

	assign sum[0] = bcd[3:0];
	assign bin = sum[k - 1];

	genvar i;
	generate
		for (i = 0; i < k; i = i + 1) begin: weighted_calc
			assign weighted[i] = bcd[i * 4 + 3:i * 4] * 10**i;
		end
		
		for (i = 1; i < k; i = i + 1) begin: sum_calc
			assign sum[i] = sum[i - 1] + weighted[i];
		end
	endgenerate

endmodule