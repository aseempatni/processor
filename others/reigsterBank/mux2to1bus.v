`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:56:17 10/09/2014 
// Design Name: 
// Module Name:    mux2to1bus 
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
module mux2to1bus(output reg [31:0]out,input [31:0]a,input [31:0]b,input select);
	mux2to1 M0 (out[0] ,a[0] ,b[0] ,select);
	mux2to1 M1 (out[1] ,a[1] ,b[1] ,select);
	mux2to1 M2 (out[2] ,a[2] ,b[2] ,select);
	mux2to1 M3 (out[3] ,a[3] ,b[3] ,select);
	mux2to1 M4 (out[4] ,a[4] ,b[4] ,select);
	mux2to1 M5 (out[5] ,a[5] ,b[5] ,select);
	mux2to1 M6 (out[6] ,a[6] ,b[6] ,select);
	mux2to1 M7 (out[7] ,a[7] ,b[7] ,select);
	mux2to1 M8 (out[8] ,a[8] ,b[8] ,select);
	mux2to1 M9 (out[9] ,a[9] ,b[9] ,select);
	mux2to1 M10(out[10],a[10],b[10],select);
	mux2to1 M11(out[11],a[11],b[11],select);
	mux2to1 M12(out[12],a[12],b[12],select);
	mux2to1 M13(out[13],a[13],b[13],select);
	mux2to1 M14(out[14],a[14],b[14],select);
	mux2to1 M15(out[15],a[15],b[15],select);
	mux2to1 M16(out[16],a[16],b[16],select);
	mux2to1 M17(out[17],a[17],b[17],select);
	mux2to1 M18(out[18],a[18],b[18],select);
	mux2to1 M19(out[19],a[19],b[19],select);
	mux2to1 M20(out[20],a[20],b[20],select);
	mux2to1 M21(out[21],a[21],b[21],select);
	mux2to1 M22(out[22],a[22],b[22],select);
	mux2to1 M23(out[23],a[23],b[23],select);
	mux2to1 M24(out[24],a[24],b[24],select);
	mux2to1 M25(out[25],a[25],b[25],select);
	mux2to1 M26(out[26],a[26],b[26],select);
	mux2to1 M27(out[27],a[27],b[27],select);
	mux2to1 M28(out[28],a[28],b[28],select);
	mux2to1 M29(out[29],a[29],b[29],select);
	mux2to1 M30(out[30],a[30],b[30],select);
	mux2to1 M31(out[31],a[31],b[31],select);
endmodule

