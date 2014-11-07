`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:04:41 09/04/2014 
// Design Name: 
// Module Name:    alu 
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
module alu(output [31:0]out,output cout,input [31:0]A,input [31:0]B,input [4:0]select);
	wire [31:0]LU;
	wire [31:0]SU;
	wire [31:0]AU;
	wire [31:0]ASU;
	lu L0(LU,A,B,select[3:0]);
	au A0(AU,cout,A,B,select[2:0]);
	su S0(SU,A,select[1:0]);
	//select[4] au or su
	mux2to1bus M0(ASU,AU,SU,select[3]);
	//select[5] lu or au & su
	mux2to1bus FM1(out,ASU,LU,select[4]);
endmodule
