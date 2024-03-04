`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : PABBULETI VENU
// ID          : N180116
//Branch       : ECE
//Project Name : TRAFFIC LIGHT CONTROLLER
//Module  Name : DEMUX
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module DEMUX(I,SEL,OP1,OP2,OP3,OP4);

//inputs to demux 
input I;
input [1:0] SEL;

//output of mux
output OP1,OP2,OP3,OP4;

reg op1=0,op2=0,op3=0,op4=0;

always@(I,SEL)
begin
		case(SEL)
			2'b00	:	op1 = I;
			2'b01	:	op2 = I;
			2'b10	:	op3 = I;
			2'b11	:	op4 = I;
			default	:	{op1,op2,op3,op4} = 4'b0;
		endcase
	 
end

assign OP1 = op1;
assign OP2 = op2;
assign OP3 = op3;
assign OP4 = op4;

endmodule