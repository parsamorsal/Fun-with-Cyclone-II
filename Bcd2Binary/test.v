module test();
	reg[7:0] x, a, b;
	wire[7:0] bcd, y;
	binary2bcd #(2) encoder(bcd, x);
	bcd2binary #(2) decoder(y, bcd);

	wire[6:0] a0, a1, b0, b1, r0, r1, r2, r3;
	combinational com(a0, a1, b0, b1, r0, r1, r2, r3, a, b);

	integer i;
	initial begin
		// for (i = 0; i < 100; i = i + 1) begin
		// 	#10 x = i;
		// 	#1 $display("x: %h, bcd: %h, y: %h", x, bcd, y);
		// end
		// $stop;
		a = 7'h52;
		b = 7'h71;
		#10
		$display("a0=%b, a1=%b, b0=%b, b1=%b, r0=%b, r1=%b, r2=%b, r3=%b",a0, a1, b0, b1, r0, r1, r2, r3);
	end
endmodule