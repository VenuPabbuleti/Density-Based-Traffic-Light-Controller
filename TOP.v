`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : PABBULETI VENU
// ID          : N180116
//Branch       : ECE
//Project Name : TRAFFIC LIGHT CONTROLLER
//Module  Name : TOP MODULE
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module Traffic_Controller(
input CLK_100MHZ , // 
input RESET ,//SW[15]
input T1,	//SW[0]
input T2,	//SW[1]
input T3,	//SW[2]
input T4,	//SW[3]


output[3:0]RED,	//LED[1],LED[5],LED[9],LED[13]
output[3:0]GREEN,//LED[0],LED[4],LED[8],LED[12]
output[3:0]ORANGE,//LED[2],LED[6],LED[10],LED[14],

output [7:0]AN,
output [7:0]CA
);

wire CLK_1HZ,SLOW_CLK;
wire Traffic;
wire rr,gg,oo;
wire Next;
wire [5:0]Time;
wire [1:0]SIDE;
wire [7:0] T_TIME;
//
ONEHZ_GEN clk1(CLK_100MHZ,CLK_1HZ);
SLOWCLK clk2(CLK_100MHZ,SLOW_CLK);

//
BIN2BCD B2D(Time,T_TIME);

//
FSM_TIMER fsmt(CLK_1HZ,RESET,Traffic,Next,rr,gg,oo,Time);

FSM_TRAFFIC ft(.Clk(CLK_1HZ),.Reset(RESET),.T1(T1),.T2(T2),.T3(T3),.T4(T4),.Next(Next),.Side(SIDE));

Display dis(SLOW_CLK,RESET,SIDE,T_TIME,AN,CA);

OUTPUTS op(rr,gg,oo,T1,T2,T3,T4,SIDE,RED,GREEN,ORANGE,Traffic);

endmodule

//G  R  O 
//0  1  2	
//4  5  6	
//8  9  10	
//12 13 14