`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 10:35:41 AM
// Design Name: 
// Module Name: display_control
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


module display_control(
input clk_1khz,
input [15:0] count,
output reg [3:0] dig_sel,
output reg [3:0] btoseg
    );
wire [1:0] twobitout;

twobitcounter a0(.clock(clk_1khz),.count(twobitout));
always @(*) begin

    case (twobitout)
        2'b00: begin
            dig_sel <= 4'b1110;
            btoseg <= count[3:0];
        end
        
        2'b01: begin
            dig_sel <= 4'b1101;
            btoseg <= count[7:4];
         end

        2'b10: begin
            dig_sel <= 4'b1011;
            btoseg <= count[11:8];
         end
            
        2'b11: begin
            dig_sel <= 4'b0111;
            btoseg <= count[15:12];
         end
    endcase
end

endmodule
