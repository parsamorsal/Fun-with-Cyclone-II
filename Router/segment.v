module segment(output[6:0] segment, input[3:0] a);
	assign segment = (a == 0) ? 7'b1000000:
					 (a == 1) ? 7'b1111001:
					 (a == 2) ? 7'b0100100:
					 (a == 3) ? 7'b0110000:
					 (a == 4) ? 7'b0011001:
					 (a == 5) ? 7'b0010010:
					 (a == 6) ? 7'b0000010:
					 (a == 7) ? 7'b1111000:
					 (a == 8) ? 7'b0000000:
					 7'b0010000;
endmodule