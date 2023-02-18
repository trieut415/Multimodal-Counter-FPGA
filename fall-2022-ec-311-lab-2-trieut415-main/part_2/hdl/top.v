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


module top(clk,reset,mode_select,dig_sel,seven,inc);

input clk, reset, inc,mode_select;
output [3:0] dig_sel;
output [6:0] seven;

wire d1,d1k,button_o;
wire [15:0] count_o;
wire [3:0] dec_i;
reg mux_o;


clock_divider1 a0(.clk_i(clk),.clk_1hz(d1));
clock_divider2 a1(.clk_i(clk),.reset(reset),.clk_1khz(d1k));
debouncer a2(.clock(clk),.reset(reset),.button_push(inc),.out_o(button_o));

always @(*) begin
    case(mode_select)
        0: mux_o <= button_o;
        1: mux_o <= d1;
        endcase
     end
     
counter1 a3(.reset(reset),.clock(mux_o),.count(count_o));
display_control a4(.clk_1khz(d1k),.count(count_o),.dig_sel(dig_sel),.btoseg(dec_i));
segment7 a5(.in(dec_i),.seg(seven));
     
     
endmodule