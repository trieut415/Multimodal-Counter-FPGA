`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 10:37:23 AM
// Design Name: 
// Module Name: clock_divider2
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


module clock_divider2(
clk_i,
reset,
clk_1khz
    );
    
input clk_i,reset; 
output reg clk_1khz;
integer divisor;

initial begin
divisor = 0;
clk_1khz =0;
end
always @(posedge clk_i)
    begin
         if (divisor < (50*10**3)) begin
            divisor <= divisor + 1;
        end else if(divisor == (50*10**3)) begin
            divisor <= 0;
            clk_1khz = ~clk_1khz;
            end
        end
endmodule
