`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2022 10:22:32 AM
// Design Name: 
// Module Name: counter
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


module counter1(input clock, 
    input reset,
    output reg [15:0]count);

always @(posedge clock or negedge reset) begin
    if (!reset) begin
        count <= 0;
    end else begin 
            count <= count + 1;
    end
end
endmodule
