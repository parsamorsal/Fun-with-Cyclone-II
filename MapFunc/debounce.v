module debounce(output out, input pb, clk_50MHZ, reset);
    reg slow_clk;
    wire Q1,Q2,Q2_bar;

    reg [26:0]counter;

    always @(posedge clk_50MHZ or negedge reset)
    if (!reset)
    begin
       counter <= 26'h00000;
       slow_clk <= 1'b0;
    end
    else if (counter < 499999)
    begin
       counter <= counter + 1'b1;
    end
    else
    begin
      counter <= 26'h00000;
      slow_clk <= ~slow_clk;
    end

    my_dff d1(slow_clk, pb,Q1 );
    my_dff d2(slow_clk, Q1,Q2 );
    assign Q2_bar = ~Q2;
    assign out = Q1 & Q2_bar;
endmodule


module my_dff(input DFF_CLOCK, D, output reg Q);

    always @ (posedge DFF_CLOCK) begin
        Q <= D;
    end

endmodule