module imp_array_mul(r, a, b);
	output[15:0] r;
	input [7:0] a, b;
	wire[15:0] shifted[7:0], sums[5:0];
	assign sums[0] = shifted[0] + shifted[1];
	assign sums[1] = shifted[2] + shifted[3];
	assign sums[2] = shifted[4] + shifted[5];
	assign sums[3] = shifted[6] + shifted[7];
	assign sums[4] = sums[0] + sums[1];
	assign sums[5] = sums[2] + sums[3];
	assign r = sums[4] + sums[5];

	genvar i;
	generate
		for(i = 0; i < 8; i = i + 1) begin: shifts
			assign shifted[i] = a<<i & {16{b[i]}};
		end
	endgenerate

endmodule