`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2022 02:56:22 PM
// Design Name: 
// Module Name: tbtop
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


module tbtop(

    );
    
reg clock,reset,increment;
wire [7:0] count;

top A3(.clock(clock),.reset(reset),.inc(increment),.count(count));



    initial begin
    reset =1;
        clock = 0;
        increment =0;
        forever #5 clock = ~clock;
    end

    initial begin
       #100 reset = ~reset;
       increment =0;
       #100 reset = ~reset;
    end



    always begin
        #100 increment = ~increment;
    end


endmodule
