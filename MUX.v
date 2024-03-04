`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : PABBULETI VENU
// ID          : N180116
//Branch       : ECE
//Project Name : TRAFFIC LIGHT CONTROLLER
//Module  Name : MUX
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module MUX(I1,I2,I3,I4,SEL,OP);

//inputs to mux 
input I1,I2,I3,I4;
input [1:0] SEL;

//output of mux
output OP;

reg op=0;

always@(I1,I2,I3,I4,SEL)
begin
		case(SEL)
			2'b00	:	op = I1;
			2'b01	:	op = I2;
			2'b10	:	op = I3;
			2'b11	:	op = I4;
			default	:	op = 0;
		endcase
	 
end

assign OP = op;

endmodule