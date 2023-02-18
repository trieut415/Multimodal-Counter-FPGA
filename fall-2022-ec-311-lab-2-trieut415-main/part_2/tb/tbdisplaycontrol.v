`timescale 1ns / 1ps

module tbdisplaycontrol();
  reg in2,reset;
  reg [15:0] count;
  wire [3:0] dig_sel;
  wire [3:0] mux_o;
  
  display_control a0(.reset(reset),.clk_1khz(in2),.count(count), .dig_sel(dig_sel),.btoseg(mux1_o));
  initial begin
    in2 = 0;
    count = 0;
    reset = 0;
  end
  
  
  initial begin
     reset = 1;
    #10 reset = 0;
    #10 reset = 1;
  end
  
  initial begin
    in2 = 0;
    forever #50 in2 = in2+1;
  end
  
  initial begin
    count = 0;
    forever #100 count = count+1;
  end
  
endmodule
