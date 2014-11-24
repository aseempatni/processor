`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:40:03 10/16/2014 
// Design Name: 
// Module Name:    mux2to14bit 
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
module mux2to14bit(output [3:0]out, input [3:0]a, input [3:0] b, input select);
	mux2to1 M0 (out[0] ,a[0] ,b[0] ,select);
	mux2to1 M1 (out[1] ,a[1] ,b[1] ,select);
	mux2to1 M2 (out[2] ,a[2] ,b[2] ,select);
	mux2to1 M3 (out[3] ,a[3] ,b[3] ,select);
endmodule
