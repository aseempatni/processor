`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:33:39 09/01/2014 
// Design Name: 
// Module Name:    luunit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module luunit(output out, input a, input b, input [3:0]sel);
	// One bit logical operations
	wire tA;
	wire tB;
	wire [3:0]t;
	not N0(tA,a);
	not N1(tB,b);

	and A0(t[0],tA,tB,sel[0]);
	and A1(t[1],tA,b,sel[1]);
	and A2(t[2],a,tB,sel[2]);
	and A3(t[3],a,b,sel[3]);
	or	O0(out,t[0],t[1],t[2],t[3]);
endmodule
