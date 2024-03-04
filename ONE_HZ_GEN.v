`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : PABBULETI VENU
// ID          : N180116
//Branch       : ECE
//Project Name : TRAFFIC LIGHT CONTROLLER
//Module  Name : 1HZ CLOCK
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module ONEHZ_GEN(clk_100MHz,clk_1Hz);

input clk_100MHz;       
output clk_1Hz;
 
reg [25:0] counter_reg = 0;
reg clk_reg = 0;
    
always @(posedge clk_100MHz) begin
    if(counter_reg == 49_999_999) begin
        counter_reg <= 0;
        clk_reg <= ~clk_reg;
    end
    else
        counter_reg <= counter_reg + 1;
end
    
assign clk_1Hz = clk_reg;
    
endmodule
