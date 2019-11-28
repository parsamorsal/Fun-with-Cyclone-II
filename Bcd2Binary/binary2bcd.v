module binary2bcd(bcd, bin);
	parameter k=2;
	output[k * 4 - 1:0] bcd;
	input[k * 4 - 1:0] bin;

	wire[k * 4 - 1: 0] remaining[k - 1:0];

	assign remaining[0] = bin;

	genvar i;
	generate
		for (i = 0; i < k; i = i + 1) begin: digit_calc
			assign bcd[i * 4 + 3:i * 4] = remaining[i] % 10;
		end
		
		for (i = 1; i < k; i = i + 1) begin: remaining_calc
			assign remaining[i] = remaining[i - 1] / 10;
		end
	endgenerate

endmodule