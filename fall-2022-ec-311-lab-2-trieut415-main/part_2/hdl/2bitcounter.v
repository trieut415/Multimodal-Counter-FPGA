`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 10:58:50 AM
// Design Name: 
// Module Name: 2bitcounter
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


module twobitcounter(input clock,output reg [1:0]count);
initial begin
  count = 0;
  end
always @(posedge clock) begin
        count <= count + 1;
        end
endmodule
