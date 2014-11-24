`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:46:23 09/04/2014 
// Design Name: 
// Module Name:    su 
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
module su(output [31:0]out, input [31:0]A,input [1:0]select);
	supply0 gnd;
	wire temp;
	mux2to1 M0 (out[ 0],gnd  ,A[ 1],select[1]);
	mux2to1 M1 (out[ 1],A[ 0],A[ 2],select[1]);
	mux2to1 M2 (out[ 2],A[ 1],A[ 3],select[1]);
	mux2to1 M3 (out[ 3],A[ 2],A[ 4],select[1]);
	mux2to1 M4 (out[ 4],A[ 3],A[ 5],select[1]);
	mux2to1 M5 (out[ 5],A[ 4],A[ 6],select[1]);
	mux2to1 M6 (out[ 6],A[ 5],A[ 7],select[1]);
	mux2to1 M7 (out[ 7],A[ 6],A[ 8],select[1]);
	mux2to1 M8 (out[ 8],A[ 7],A[ 9],select[1]);
	mux2to1 M9 (out[ 9],A[ 8],A[10],select[1]);
	mux2to1 M10(out[10],A[ 9],A[11],select[1]);
	mux2to1 M11(out[11],A[10],A[12],select[1]);
	mux2to1 M12(out[12],A[11],A[13],select[1]);
	mux2to1 M13(out[13],A[12],A[14],select[1]);
	mux2to1 M14(out[14],A[13],A[15],select[1]);
	mux2to1 M15(out[15],A[14],A[16],select[1]);
	mux2to1 M16(out[16],A[15],A[17],select[1]);
	mux2to1 M17(out[17],A[16],A[18],select[1]);
	mux2to1 M18(out[18],A[17],A[19],select[1]);
	mux2to1 M19(out[19],A[18],A[20],select[1]);
	mux2to1 M20(out[20],A[19],A[21],select[1]);
	mux2to1 M21(out[21],A[20],A[22],select[1]);
	mux2to1 M22(out[22],A[21],A[23],select[1]);
	mux2to1 M23(out[23],A[22],A[24],select[1]);
	mux2to1 M24(out[24],A[23],A[25],select[1]);
	mux2to1 M25(out[25],A[24],A[26],select[1]);
	mux2to1 M26(out[26],A[25],A[27],select[1]);
	mux2to1 M27(out[27],A[26],A[28],select[1]);
	mux2to1 M28(out[28],A[27],A[29],select[1]);
	mux2to1 M29(out[29],A[28],A[30],select[1]);
	mux2to1 M30(out[30],A[29],A[31],select[1]);
	//bit 31
	mux2to1 T0 (temp,A[31],gnd,select[0]);
	mux2to1 M31(out[31],A[30],temp,select[1]);
endmodule
	