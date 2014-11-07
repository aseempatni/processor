`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:55:49 09/04/2014 
// Design Name: 
// Module Name:    sright 
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
module sright(output [31:0]out,input [31:0]A,input select);
	supply0 gnd;
	mux2to1 M0(out[31],A[31],gnd,select);
	assign out[0] = A[1];
	assign out[1] = A[2];
	assign out[2] = A[3];
	assign out[3] = A[4];
	assign out[4] = A[5];
	assign out[5] = A[6];
	assign out[6] = A[7];
	assign out[7] = A[8];
	assign out[8] = A[9];
	assign out[9] = A[10];
	assign out[10] = A[11];
	assign out[11] = A[12];
	assign out[12] = A[13];
	assign out[13] = A[14];
	assign out[14] = A[15];
	assign out[15] = A[16];
	assign out[16] = A[17];
	assign out[17] = A[18];
	assign out[18] = A[19];
	assign out[19] = A[20];
	assign out[20] = A[21];
	assign out[21] = A[22];
	assign out[22] = A[23];
	assign out[23] = A[24];
	assign out[24] = A[25];
	assign out[25] = A[26];
	assign out[26] = A[27];
	assign out[27] = A[28];
	assign out[28] = A[29];
	assign out[29] = A[30];
	assign out[30] = A[31];
endmodule
