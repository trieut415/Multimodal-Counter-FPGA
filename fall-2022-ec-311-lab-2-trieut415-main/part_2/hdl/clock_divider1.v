`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 10:36:48 AM
// Design Name: 
// Module Name: clock_divider1
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


module clock_divider1(clk_i,reset,clk_1hz);

input clk_i,reset; 
output reg clk_1hz;
integer divisor;

initial begin
divisor = 0;
clk_1hz =0;
end

always @(posedge clk_i)
    begin
        if (divisor < (5*10**7)) begin
            divisor <= divisor + 1;
        end else if(divisor == (5*10**7)) begin
            divisor <= 0;
            clk_1hz = ~clk_1hz;
            end
        end
endmodule