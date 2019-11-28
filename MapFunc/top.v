module top(
  	output LCD_ON,   
  	output LCD_BLON, 
  	output LCD_RW,   
  	output LCD_EN,   
  	output LCD_RS,   
  	inout [7:0] LCD_DATA,
  	input CLOCK_50,
  	input pb,
  	input reset,
  	input i);

	wire t, f, clk;

	debounce db(.out(clk), .pb(pb), .clk_50MHZ(CLOCK_50), .reset(reset));

	fsm m(
		.t(t),
		.f(f),
		.clk(clk),
		.reset(reset),
		.i(i));


	assign LCD_ON = 1'b1;
	assign LCD_BLON = 1'b1;
	LCD_Display dis(
	   .clk_50MHZ(CLOCK_50),
	   .reset(reset),
	   .t(t),
	   .f(f),
	   .DATA_BUS(LCD_DATA),
	   .LCD_RW(LCD_RW),
	   .LCD_E(LCD_EN),
	   .LCD_RS(LCD_RS)
	);

endmodule 
