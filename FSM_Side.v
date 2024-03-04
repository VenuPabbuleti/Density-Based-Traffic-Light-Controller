`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : PABBULETI VENU
// ID          : N180116
//Branch       : ECE
//Project Name : TRAFFIC LIGHT CONTROLLER
//Module  Name : 
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module FSM_TRAFFIC(Clk,Reset,T1,T2,T3,T4,Next,Side);
input Clk,Reset;
input T1,T2,T3,T4; //Traffic high or low signals
input Next ; // input signal from FSM_Timer
output [1:0]Side;

localparam s0=0,s1=1,s2=2,s3=3;

reg [1:0] C_State,N_State;

//state reg
always@(posedge Clk,posedge Reset)
begin
	if(Reset)
		C_State <= s0;
	else
		C_State <= N_State;
end

//Next State Logic
always @(*)
begin
	case(C_State)
		s0  : 
				case({Next,T2})
					2'b00	:	N_State <= s0;
					2'b01	:	N_State <= s0;
					2'b10	:	N_State <= s2;
					2'b11	:	N_State	<= s1;
					default	:	N_State	<= s0;
				endcase
				
		s1	:
				case({Next,T3})
					2'b00	:	N_State <= s1;
					2'b01	:	N_State <= s1;
					2'b10	:	N_State <= s3;
					2'b11	:	N_State	<= s2;
					default	:	N_State	<= s1;
				endcase
				
		s2	:	
				case({Next,T4})
					2'b00	:	N_State <= s2;
					2'b01	:	N_State <= s2;
					2'b10	:	N_State <= s0;
					2'b11	:	N_State	<= s3;
					default	:	N_State	<= s2;
				endcase
				
		s3	:
				case({Next,T1})
					2'b00	:	N_State <= s3;
					2'b01	:	N_State <= s3;
					2'b10	:	N_State <= s1;
					2'b11	:	N_State	<= s0;
					default	:	N_State	<= s3;
				endcase
	endcase
end

assign Side = C_State;

endmodule