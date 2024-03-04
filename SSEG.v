`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : PABBULETI VENU
// ID          : N180116
//Branch       : ECE
//Project Name : VOTING MACHINE
//Module  Name : TRAFFIC LIGHT CONTROLLE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module segment(IN,sseg);
input [3:0]IN;
output reg [7:0] sseg;

always @(IN)
begin
	case(IN)
		0 : sseg = 8'b11000000; //h--a
		1 : sseg = 8'b11111001;   //1
		2 : sseg = 8'b10100100;   //2
		3 : sseg = 8'b10110000;   //3
		4 : sseg = 8'b10011001;   //4
		5 : sseg = 8'b10010010;   //5
		6 : sseg = 8'b10000010;   //6
		7 : sseg = 8'b11111000;   //7
		8 : sseg = 8'b10000000;	  //8
		9 : sseg = 8'b10010000;   //9
		10: sseg = 8'b11111111;   //blank
		default : sseg = 8'b11111111; //blank
	endcase
end
endmodule
