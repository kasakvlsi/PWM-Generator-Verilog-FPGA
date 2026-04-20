`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2026 19:22:26
// Design Name: 
// Module Name: pwm_generator_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////






   module pwm_generator_top (
    input clk,
    input [7:0] sw,
    output pwm_out
);

reg [7:0] counter = 0;
reg [7:0] duty_cycle = 0;

// clock divider
reg [15:0] clk_div = 0;
wire slow_clk;

// generate slow clock (~1kHz approx depending on FPGA clock)
always @(posedge clk)
begin
    clk_div <= clk_div + 1;
end

assign slow_clk = clk_div[15];  // take MSB as slow clock

// PWM counter (runs on slow clock)
always @(posedge slow_clk)
begin
    counter <= counter + 1;
end

// duty cycle control 
always @(posedge clk)
begin
    if (sw[0] == 0)
        duty_cycle <= 0;
    else
        duty_cycle <= sw;  // 0-255 brightness
end

// PWM output
assign pwm_out = (counter < duty_cycle);

endmodule

    
