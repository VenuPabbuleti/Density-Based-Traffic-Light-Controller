`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : PABBULETI VENU
// ID          : N180116
//Branch       : ECE
//Project Name : TRAFFIC LIGHT CONTROLLER
//Module  Name : FSM_TIMER
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module FSM_TIMER(Clk,Rst,Traffic,NEXT,RED,GREEN,ORANGE,State);

////
input Clk,Rst;
input Traffic;

////
output NEXT;
output RED,GREEN,ORANGE;
output [5:0]State;

//
reg Red,Green,Orange;
reg[5:0]C_State,N_State;
reg Next;
////states
localparam s00=59,s01=58,s02=57,s03=56,s04=55,s05=54,s06=53,s07=52,s08=51,s09=50,s10=49,s11=48,s12=47,s13=46,s14=45,s15=44,s16=43,s17=42,
			s18=41,s19=40,s20=39,s21=38,s22=37,s23=36,s24=35,s25=34,s26=33,s27=32,s28=31,s29=30,s30=29,s31=28,s32=27,s33=26,s34=25,s35=24,
			s36=23,s37=22,s38=21,s39=20,s40=19,s41=18,s42=17,s43=16,s44=15,s45=14,s46=13,s47=12,s48=11,s49=10,s50=09,s51=08,s52=07,
			s53=06,s54=05,s55=04,s56=03,s57=02,s58=01,s59=00;
			
always@(posedge Clk,posedge Rst)
begin
	if(Rst)
		C_State <= s00;
	else
		C_State <= N_State;
end

always@(*)
begin
	case(C_State)
		s00	: 	if(Traffic)
					N_State <= s01;
				else
					N_State <= s54;

		s01	: 	if(Traffic)
					N_State <= s02;
				else
					N_State <= s54;

		s02	: 	if(Traffic)
					N_State <= s03;
				else
					N_State <= s54;

		s03	: 	if(Traffic)
					N_State <= s04;
				else
					N_State <= s54;

		s04	: 	if(Traffic)
					N_State <= s05;
				else
					N_State <= s54;

		s05	: 	if(Traffic)
					N_State <= s06;
				else
					N_State <= s54;

		s06	: 	if(Traffic)
					N_State <= s07;
				else
					N_State <= s54;

		s07	: 	if(Traffic)
					N_State <= s08;
				else
					N_State <= s54;

		s08	: 	if(Traffic)
					N_State <= s09;
				else
					N_State <= s54;

		s09	: 	if(Traffic)
					N_State <= s10;
				else
					N_State <= s54;

		s10	: 	if(Traffic)
					N_State <= s11;
				else
					N_State <= s54;
					
		s11	: 	if(Traffic)
					N_State <= s12;
				else
					N_State <= s54;

		s12	: 	if(Traffic)
					N_State <= s13;
				else
					N_State <= s54;

		s13	: 	if(Traffic)
					N_State <= s14;
				else
					N_State <= s54;

		s14	: 	if(Traffic)
					N_State <= s15;
				else
					N_State <= s54;

		s15	: 	if(Traffic)
					N_State <= s16;
				else
					N_State <= s54;

		s16	: 	if(Traffic)
					N_State <= s17;
				else
					N_State <= s54;

		s17	: 	if(Traffic)
					N_State <= s18;
				else
					N_State <= s54;

		s18	: 	if(Traffic)
					N_State <= s19;
				else
					N_State <= s54;

		s19	: 	if(Traffic)
					N_State <= s20;
				else
					N_State <= s54;

		s20	: 	if(Traffic)
					N_State <= s21;
				else
					N_State <= s54;
					
		s21	: 	if(Traffic)
					N_State <= s22;
				else
					N_State <= s54;

		s22	: 	if(Traffic)
					N_State <= s23;
				else
					N_State <= s54;

		s23	: 	if(Traffic)
					N_State <= s24;
				else
					N_State <= s54;

		s24	: 	if(Traffic)
					N_State <= s25;
				else
					N_State <= s54;

		s25	: 	if(Traffic)
					N_State <= s26;
				else
					N_State <= s54;

		s26	: 	if(Traffic)
					N_State <= s27;
				else
					N_State <= s54;

		s27	: 	if(Traffic)
					N_State <= s28;
				else
					N_State <= s54;

		s28	: 	if(Traffic)
					N_State <= s29;
				else
					N_State <= s54;

		s29	: 	if(Traffic)
					N_State <= s30;
				else
					N_State <= s54;
					
		s30	: 	if(Traffic)
					N_State <= s31;
				else
					N_State <= s54;
					
		s31	: 	if(Traffic)
					N_State <= s32;
				else
					N_State <= s54;

		s32	: 	if(Traffic)
					N_State <= s33;
				else
					N_State <= s54;

		s33	: 	if(Traffic)
					N_State <= s34;
				else
					N_State <= s54;

		s34	: 	if(Traffic)
					N_State <= s35;
				else
					N_State <= s54;

		s35	: 	if(Traffic)
					N_State <= s36;
				else
					N_State <= s54;

		s36	: 	if(Traffic)
					N_State <= s37;
				else
					N_State <= s54;

		s37	: 	if(Traffic)
					N_State <= s38;
				else
					N_State <= s54;

		s38	: 	if(Traffic)
					N_State <= s39;
				else
					N_State <= s54;

		s39	: 	if(Traffic)
					N_State <= s40;
				else
					N_State <= s54;

		s40	: 	if(Traffic)
					N_State <= s41;
				else
					N_State <= s54;
					
		s41	: 	if(Traffic)
					N_State <= s42;
				else
					N_State <= s54;

		s42	: 	if(Traffic)
					N_State <= s43;
				else
					N_State <= s54;

		s43	: 	if(Traffic)
					N_State <= s44;
				else
					N_State <= s54;

		s44	: 	if(Traffic)
					N_State <= s45;
				else
					N_State <= s54;

		s45	: 	if(Traffic)
					N_State <= s46;
				else
					N_State <= s54;

		s46	: 	if(Traffic)
					N_State <= s47;
				else
					N_State <= s54;

		s47	: 	if(Traffic)
					N_State <= s48;
				else
					N_State <= s54;

		s48	: 	if(Traffic)
					N_State <= s49;
				else
					N_State <= s54;

		s49	: 	if(Traffic)
					N_State <= s40;
				else
					N_State <= s54;

		s50	: 	if(Traffic)
					N_State <= s51;
				else
					N_State <= s54;
					
		s51	: 	if(Traffic)
					N_State <= s52;
				else
					N_State <= s54;

		s52	: 	if(Traffic)
					N_State <= s53;
				else
					N_State <= s54;

		s53	: 	if(Traffic)
					N_State <= s54;
				else
					N_State <= s54;
					
		s54 :	N_State <= s55;
		
		s55 :	N_State <= s56;
		
		s56 :	N_State <= s57;
		
		s57 :	N_State <= s58;
		
		s58 :	N_State <= s59;
		
		s59 :	N_State <= s00;
		
		default : N_State <=s00;
	endcase
end


//output
always@(*)
begin
	case(C_State)
	s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,
	s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54 :
			begin
				Next   = 0;
				Green  = 1;
				Orange = 0;
				Red    = 1;
			end
	s55,s56,s57,s58 : 
			begin
				Next   = 0;
				Green  = 0;
				Orange = 1;
				Red    = 1;				
			end
	s59 :
			begin
				Next = 1;
			end
	default : 
			begin
				Next   = 0;
				Green  = 0;
				Orange = 0;
				Red    = 1;
			end
		
	endcase
end

assign NEXT = Next;
assign GREEN = Green;
assign RED = Red;
assign ORANGE = Orange;
assign State = C_State ;

endmodule
