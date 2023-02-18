`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2022 10:22:50 AM
// Design Name: 
// Module Name: top
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


module top(
input clock,
input reset,
input inc,
output [7:0] count);


wire button_out;

debouncer g1(.clock(clock),.reset(reset),.button_push(inc),.out_o(button_out));

counter1 g2(.clock(clock),.reset(reset),.inc(button_out),.count(count));

endmodule
