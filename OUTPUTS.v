`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : PABBULETI VENU
// ID          : N180116
//Branch       : ECE
//Project Name : TRAFFIC LIGHT CONTROLLER
//Module  Name : FSM_TIMER
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module OUTPUTS(R,G,O,T1,T2,T3,T4,SIDE,R_O,G_O,OR_O,T);

input R,G,O;           // inputs from FSM_TIMER's outputs
input T1,T2,T3,T4;     // inputs from switches to indicate traffic high or low
input [1:0]SIDE;		       // input from FSM_SIDE's output to indicate side of traffic light indicator
output	[3:0]R_O;      // R_O indicates of all directions red light
output	[3:0]G_O;    // G_O indicates of all directions green light 
output	[3:0]OR_O;   // OR_O indicates of all directions orange light	
output  T;             // indicates traffic present in road -->input to FSM_TIMER

wire r;
assign r = G | O;

MUX op(T1,T2,T3,T4,SIDE,T);
DEMUX dm1(G,SIDE,G_O[0],G_O[1],G_O[2],G_O[3]);
DEMUX dm2(O,SIDE,OR_O[0],OR_O[1],OR_O[2],OR_O[3]);
DEMUX_lOW dm3(r,SIDE,R_O[0],R_O[1],R_O[2],R_O[3]);

endmodule