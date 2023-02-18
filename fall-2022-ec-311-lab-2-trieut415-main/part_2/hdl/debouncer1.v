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

/*
module debouncer(
input clk_i,
input resetn_i, 
input button_push,
output reg out_o);

reg deb_count_start,output_exist;
reg[7:0] deb_count;

 always@(posedge clk_i or negedge resetn_i) begin
    if(!resetn_i) begin
        deb_count <= 0;
        deb_count_start <= 0;
        output_exist <= 0;
        out_o <= 0;
     end else if (button_push == 1) begin
            if(output_exist == 0) begin 
               if (deb_count_start == 0) begin
                    deb_count_start <= 1;
                    deb_count <= deb_count +1;
               end
               end

     

           
           else begin
                    deb_count <= deb_count +1;
           end //else
           if (deb_count == 20) begin
                out_o <= 1;
                output_exist <= 1;
                deb_count_start <= 0;
                deb_count <= 0;
           end //if
           
           end
       else begin
          out_o <= 0;
      end
{out_o,deb_count,deb_count_start,output_exist} = 0;
 end
  

 endmodule
    
    
*/
