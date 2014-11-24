`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:38:44 09/04/2014 
// Design Name: 
// Module Name:    mux4to1bus 
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
module mux4to1bus(output [31:0]out,input [31:0]a,input [31:0]b,input [31:0]c,input [31:0]d,input [1:0]select);
	wire [31:0]out1;
	wire [31:0]out2;
	mux2to1bus M0(out1,a,b,select[0]);
	mux2to1bus M1(out2,c,d,select[0]);
	mux2to1bus M2(out,out1,out2,select[1]);
endmodule
