module top (
	output[6:0] a0,
	output[6:0] a1,
	output[6:0] b0,
	output[6:0] b1,
	output[6:0] r0,
	output[6:0] r1,
	output[6:0] r2,
	output[6:0] r3,
 	input[7:0] a,
 	input[7:0] b);

	wire[7:0] bina, binb;

	segment s1(a0, a[3:0]);
	segment s2(a1, a[7:4]);
	segment s3(b0, b[3:0]);
	segment s4(b1, b[7:4]);

	bcd2binary #(2) dec1(bina, a);
	bcd2binary #(2) dec2(binb, b);

	wire[15:0] r, bcdr;

	wire[15:0] shifted[7:0], sums[7:0];
	assign sums[0] = shifted[0];
	assign r = sums[7];

	genvar i;
	generate
		for(i = 0; i < 8; i = i + 1) begin: shifts
			assign shifted[i] = bina<<i & {16{binb[i]}};
		end

		for(i = 1; i < 8; i = i + 1) begin: adders
			assign sums[i] = sums[i - 1] + shifted[i];
		end
	endgenerate

	binary2bcd #(4) en(bcdr, r);

	segment s5(r0, bcdr[3:0]);
	segment s6(r1, bcdr[7:4]);
	segment s7(r2, bcdr[11:8]);
	segment s8(r3, bcdr[15:12]);

	
endmodule