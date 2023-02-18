`timescale 1ns / 1ps

// EC-311 Lab-2 Part-1

module debouncer (
  
  input wire                    clk_i,                   // input clock
  input wire                    resetn_btn_i,            // input pushbutton for active LOW reset (Hint: On Nexys A7 board, the red push button gives 0 output when pressed) 
  input wire                    increment_counter_btn_i, // input push button for counter increment


  // LED outputs
  output wire                   led0,
  output wire                   led1,
  output wire                   led2,
  output wire                   led3,
  output wire                   led4,
  output wire                   led5,
  output wire                   led6,
  output wire                   led7

);

// Your lab2 part-1 code comes here

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2022 10:14:01 AM
// Design Name: 
// Module Name: debouncer
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


module debouncer(
input clock,
input reset, 
input button_push,
output reg out_o);

reg deb_count_start,output_exist;
integer deb_count =0;


     
 always@(posedge clock or negedge reset) begin
    if(!reset) begin
        deb_count <= 0;
        deb_count_start <= 0;
        output_exist <= 0;
        out_o <= 0;
     end 
      else if (button_push == 1) begin
        if(output_exist == 0) begin 
           if (deb_count_start == 0) begin
                deb_count_start <= 1;
                deb_count <= deb_count +1;
           end
           else begin
                    deb_count <= deb_count +1;
           end //else
           if (deb_count == 10000) begin
                out_o <= 1;
                output_exist <= 1;
                deb_count_start <= 0;
                deb_count <= 0;
           end //if
         end else begin
          out_o <= 0;
        end 
      end
      else begin
//      button_push = 0;
      deb_count_start <= 0;
      deb_count <= 0;
      output_exist <= 0;
      end
  end

 endmodule
    
    

endmodule
