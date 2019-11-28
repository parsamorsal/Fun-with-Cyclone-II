module LCD_Display(LCD_RS,LCD_E,LCD_RW,DATA_BUS, clk_50MHZ, reset, t, f);
input clk_50MHZ, reset;
input t, f;
output LCD_RS, LCD_E, LCD_RW;
inout [7:0] DATA_BUS;

parameter
HOLD = 4'h0,
FUNC_SET = 4'h1,
DISPLAY_ON = 4'h2,
MODE_SET = 4'h3,
PRINT_STRING = 4'h4,
RETURN = 4'h5,
DROP_LCD_E = 4'h6,
RESET = 4'h7,
DISPLAY_OFF = 4'h8,
DISPLAY_CLEAR = 4'h9;

reg [3:0] state, next_command;
reg [7:0] DATA_BUS_VALUE;
wire [7:0] next_char;
reg [4:0] index;
reg CLK_400HZ, LCD_RW, LCD_E, LCD_RS;

assign DATA_BUS = (LCD_RW? 8'bZZZZZZZZ: DATA_BUS_VALUE);

wire[7:0] str[6:0];
assign str[0] = 8'h74;
assign str[1] = 8'h3D;
assign str[2] = t ? 8'h31 : 8'h30;
assign str[3] = 8'h2c;
assign str[4] = 8'h66;
assign str[5] = 8'h3D;
assign str[6] = f ? 8'h31 : 8'h30;

assign next_char = str[index];

reg [19:0] clk_counter;
always @(posedge clk_50MHZ or negedge reset)
    if (!reset)
    begin
       clk_counter <= 20'h00000;
       CLK_400HZ <= 1'b0;
    end
    else if (clk_counter < 20'h0F424)
    begin
       clk_counter <= clk_counter + 1'b1;
    end
    else
    begin
      clk_counter <= 20'h00000;
      CLK_400HZ <= ~CLK_400HZ;
    end

always @(posedge CLK_400HZ or negedge reset)
    if (!reset)
    begin
     state <= RESET;
    end
    else
    case (state)
    RESET:            
    begin
      LCD_E <= 1'b1;
      LCD_RS <= 1'b0;
      LCD_RW <= 1'b0;
      DATA_BUS_VALUE <= 8'h38;
      state <= DROP_LCD_E;
      next_command <= FUNC_SET;
      index <= 5'b00000;
    end

    FUNC_SET:
    begin
      LCD_E <= 1'b1;
      LCD_RS <= 1'b0;
      LCD_RW <= 1'b0;
      DATA_BUS_VALUE <= 8'h38;
      state <= DROP_LCD_E;
      next_command <= DISPLAY_OFF;
    end

    DISPLAY_OFF:
    begin
      LCD_E <= 1'b1;
      LCD_RS <= 1'b0;
      LCD_RW <= 1'b0;
      DATA_BUS_VALUE <= 8'h08;
      state <= DROP_LCD_E;
      next_command <= DISPLAY_CLEAR;
    end

    DISPLAY_CLEAR:
    begin
      LCD_E <= 1'b1;
      LCD_RS <= 1'b0;
      LCD_RW <= 1'b0;
      DATA_BUS_VALUE <= 8'h01;
      state <= DROP_LCD_E;
      next_command <= DISPLAY_ON;
    end

    DISPLAY_ON:
    begin
      LCD_E <= 1'b1;
      LCD_RS <= 1'b0;
      LCD_RW <= 1'b0;
      DATA_BUS_VALUE <= 8'h0C;
      state <= DROP_LCD_E;
      next_command <= MODE_SET;
    end

    MODE_SET:
    begin
      LCD_E <= 1'b1;
      LCD_RS <= 1'b0;
      LCD_RW <= 1'b0;
      DATA_BUS_VALUE <= 8'h06;
      state <= DROP_LCD_E;
      next_command <= PRINT_STRING;
    end


    PRINT_STRING:
    begin
      state <= DROP_LCD_E;
      LCD_E <= 1'b1;
      LCD_RS <= 1'b1;
      LCD_RW <= 1'b0;
      DATA_BUS_VALUE <= next_char;

      if (index < 6) begin
         index <= index + 1'b1;
         next_command <= PRINT_STRING;
      end
      else begin
         index <= 5'b00000; 
         next_command <= RETURN;
      end
    end


    RETURN:
    begin
      LCD_E <= 1'b1;
      LCD_RS <= 1'b0;
      LCD_RW <= 1'b0;
      DATA_BUS_VALUE <= 8'h80;
      state <= DROP_LCD_E;
      next_command <= PRINT_STRING;
    end

    DROP_LCD_E:
    begin
      LCD_E <= 1'b0;
      state <= HOLD;
    end
             
    HOLD:
    begin
      state <= next_command;
    end
    endcase
endmodule