`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:51:30 08/21/2014 
// Design Name: 
// Module Name:    thirtytwobitlookaheadadder 
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
module thirtytwobitlookaheadadder(output [31:0]S, output cout, input [31:0]A, input [31:0]B, input cin);
	wire c;
	internibblecarrylookahead16bit f0 (S[15:0], c, A[15:0], B[15:0], cin);
	internibblecarrylookahead16bit f1 (S[31:16], cout, A[31:16], B[31:16], c);
endmodule
