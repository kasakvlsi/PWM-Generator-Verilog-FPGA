`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2026 15:06:25
// Design Name: 
// Module Name: pwm_generator
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

 
module pwm_generator(
    input clk,
    input reset,
    input [7:0] duty,   // Duty cycle input (0-255)
    output reg pwm_out
);

reg [7:0] counter;

always @(posedge clk or posedge reset)
begin
    if(reset)
        counter <= 8'd0;
    else
        counter <= counter + 1;
end

always @(posedge clk or posedge reset)
begin
    if(reset)
        pwm_out <= 1'b0;
    else if(counter < duty)
        pwm_out <= 1'b1;
    else
        pwm_out <= 1'b0;
end



endmodule
