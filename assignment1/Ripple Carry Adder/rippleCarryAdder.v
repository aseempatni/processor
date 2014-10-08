`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:42:38 08/07/2014 
// Design Name: 
// Module Name:    rippleCarryAdder 
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
module rippleCarryAdder(input[31:0] a,input[31:0] b,output[31:0] sum,output[31:0] carry);
	supply0 gnd;
	//We have implemented the code of 32 bit adder but in the ucf file we have assigned only first 16 bits so effectively it is a 16 bit adder
	bitAdderstruct G0(sum[0],carry[0],a[0],b[0],gnd);
	bitAdderstruct G1(sum[1],carry[1],a[1],b[1],carry[0]);
	bitAdderstruct G2(sum[2],carry[2],a[2],b[2],carry[1]);
	bitAdderstruct G3(sum[3],carry[3],a[3],b[3],carry[2]);
	bitAdderstruct G4(sum[4],carry[4],a[4],b[4],carry[3]);
	bitAdderstruct G5(sum[5],carry[5],a[5],b[5],carry[4]);
	bitAdderstruct G6(sum[6],carry[6],a[6],b[6],carry[5]);
	bitAdderstruct G7(sum[7],carry[7],a[7],b[7],carry[6]);
	bitAdderstruct G8(sum[8],carry[8],a[8],b[8],carry[7]);
	bitAdderstruct G9(sum[9],carry[9],a[9],b[9],carry[8]);
	bitAdderstruct G10(sum[10],carry[10],a[10],b[10],carry[9]);
	bitAdderstruct G11(sum[11],carry[11],a[11],b[11],carry[10]);
	bitAdderstruct G12(sum[12],carry[12],a[12],b[12],carry[11]);
	bitAdderstruct G13(sum[13],carry[13],a[13],b[13],carry[12]);
	bitAdderstruct G14(sum[14],carry[14],a[14],b[14],carry[13]);
	bitAdderstruct G15(sum[15],carry[15],a[15],b[15],carry[14]);
	bitAdderstruct G16(sum[16],carry[16],a[16],b[16],carry[15]);
	bitAdderstruct G17(sum[17],carry[17],a[17],b[17],carry[16]);
	bitAdderstruct G18(sum[18],carry[18],a[18],b[18],carry[17]);
	bitAdderstruct G19(sum[19],carry[19],a[19],b[19],carry[18]);
	bitAdderstruct G20(sum[20],carry[20],a[20],b[20],carry[19]);
	bitAdderstruct G21(sum[21],carry[21],a[21],b[21],carry[20]);
	bitAdderstruct G22(sum[22],carry[22],a[22],b[22],carry[21]);
	bitAdderstruct G23(sum[23],carry[23],a[23],b[23],carry[22]);
	bitAdderstruct G24(sum[24],carry[24],a[24],b[24],carry[23]);
	bitAdderstruct G25(sum[25],carry[25],a[25],b[25],carry[24]);
	bitAdderstruct G26(sum[26],carry[26],a[26],b[26],carry[25]);
	bitAdderstruct G27(sum[27],carry[27],a[27],b[27],carry[26]);
	bitAdderstruct G28(sum[28],carry[28],a[28],b[28],carry[27]);
	bitAdderstruct G29(sum[29],carry[29],a[29],b[29],carry[28]);
	bitAdderstruct G30(sum[30],carry[30],a[30],b[30],carry[29]);
	bitAdderstruct G31(sum[31],carry[31],a[31],b[31],carry[30]);
endmodule
