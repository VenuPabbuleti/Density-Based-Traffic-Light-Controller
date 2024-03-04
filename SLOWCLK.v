`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : PABBULETI VENU
// ID          : N180116
//Branch       : ECE
//Project Name : TRAFFIC LIGHT CONTROLLER
//Module  Name : SLOW CLOCK
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////
 

module SLOWCLK(clk,sclk_out);
input clk;
output reg sclk_out=0;

reg[26:0]count=0;
 
always @(posedge clk) begin
if (count==50000-1) begin
    sclk_out<=~sclk_out;
    count<=0;
    end
else begin
    count<=count+1;
end
end
endmodule
