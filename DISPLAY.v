`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : PABBULETI VENU
// ID          : N180116
//Branch       : ECE
//Project Name : VOTING MACHINE
//Module  Name : DISPLAY
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Display(clk_slow,reset,State,Time,AN,CA);

//inputs
input clk_slow;
input reset;
input [1:0]State;   // it get machine state from the FSM
input [7:0]Time ;			// it from FSM_timer 

output reg[7:0]AN;
output reg[7:0]CA;


reg [3:0]one,two,three,four,five,six,seven,eight;

wire [7:0]ca1,ca2,ca3,ca4,ca5,ca6,ca7,ca8;

always @(*) begin
	case(State)
		0	:	begin eight<=10;        seven<=10;         six<=10;        five<=10;         four<=10;        three<=10;        two<=Time[7:4]; one<=Time[3:0];end
		1	:	begin eight<=10;        seven<=10;         six<=10;        five<=10;         four<=Time[7:4]; three<=Time[3:0]; two<=10;        one<=10;end
		2	:	begin eight<=10;        seven<=10;         six<=Time[7:4]; five<=Time[3:0];  four<=10;        three<=10;        two<=10;        one<=10;end		
		3	:	begin eight<=Time[7:4]; seven<=Time[3:0];  six<=10;        five<=10;         four<=10;        three<=10;        two<=10;        one<=10;end			
		default : begin eight<=10; seven<=10;  six<=10; five<=10;  four<=10; three<=10; two<=10; one<=10;end
		endcase
end


reg [2:0]count;

always @(posedge clk_slow or posedge reset )begin
if(reset)
    count<=0;
else
    count<=count+1;
case({count})
0:begin  CA<=ca1;   AN<=8'b11111110; end
1:begin  CA<=ca2;   AN<=8'b11111101; end
2:begin  CA<=ca3;   AN<=8'b11111011; end
3:begin  CA<=ca4;   AN<=8'b11110111; end
4:begin  CA<=ca5;   AN<=8'b11101111; end
5:begin  CA<=ca6;   AN<=8'b11011111; end
6:begin  CA<=ca7;   AN<=8'b10111111; end
7:begin  CA<=ca8;   AN<=8'b01111111; end
endcase
end


segment d1(one , ca1);
segment d2(two , ca2);
segment d3(three,ca3);
segment d4(four, ca4);
segment d5(five, ca5);
segment d6(six , ca6);
segment d7(seven,ca7);
segment d8(eight,ca8);

endmodule



