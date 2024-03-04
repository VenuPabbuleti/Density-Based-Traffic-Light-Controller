`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : PABBULETI VENU
// ID          : N180116
//Branch       : ECE
//Project Name : TRAFFIC LIGHT CONTROLLER
//Module  Name : BINARY TO BCD CONVERTER
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////



module BIN2BCD(in,out);

input [5:0]in;
output [7:0]out;

//
reg [3:0]tens;
reg [3:0]ones;

reg [5:0]inb;


always @(*) begin
    inb = in;
    ones = inb%10;
    inb = inb/10;
    tens = inb%10;
end

assign out = {tens,ones};

endmodule
