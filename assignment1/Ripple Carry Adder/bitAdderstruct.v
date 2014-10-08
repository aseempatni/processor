`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:03:55 08/07/2014 
// Design Name: 
// Module Name:    bitAdderstruct 
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
module bitAdderstruct(sum,cout,a,b,cin);
	input a,b,cin;
	output sum,cout;
	
	xor G0(sum,a,b,cin);
	and G1(t1,a,b);
	and G2(t2,b,cin);
	and G3(t3,cin,a);
	or  G5(cout,t1,t2,t3);
endmodule
