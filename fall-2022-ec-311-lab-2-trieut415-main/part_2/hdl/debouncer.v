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
    
    

