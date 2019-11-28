module comb_mul(r, a, b);
	parameter k = 8;
	output[2 * k - 1:0] r;
	input [k - 1:0] a, b;
	assign r = a * b;
endmodule