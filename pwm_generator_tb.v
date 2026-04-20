`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2026 22:06:29
// Design Name: 
// Module Name: pwm_generator_tb
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


module pwm_generator_tb;


reg clk = 0;
reg reset;
reg [7:0] duty;
wire pwm_out;

pwm_generator uut (
    .clk(clk),
    .reset(reset),
    .duty(duty),
    .pwm_out(pwm_out)
);

// Clock Generation (10ns period)
always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    duty = 8'd40;

    #20;
     reset = 0;

    // 25% Duty Cycle
    duty = 8'd64;
    #8000;

    // 50% Duty Cycle
    duty = 8'd128;
    #8000;

    // 75% Duty Cycle
    duty = 8'd192;
    #8000;
    

    $finish;
end

endmodule


