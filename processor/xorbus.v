`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:16:31 09/04/2014 
// Design Name: 
// Module Name:    xorbus 
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
module xorbus(output [31:0]out,input [31:0]A,input x);
	xor l0 (out[0] , A[0] , x);
	xor l1 (out[1] , A[1] , x);
	xor l2 (out[2] , A[2] , x);
	xor l3 (out[3] , A[3] , x);
	xor l4 (out[4] , A[4] , x);
	xor l5 (out[5] , A[5] , x);
	xor l6 (out[6] , A[6] , x);
	xor l7 (out[7] , A[7] , x);
	xor l8 (out[8] , A[8] , x);
	xor l9 (out[9] , A[9] , x);
	xor l10(out[10], A[10], x);
	xor l11(out[11], A[11], x);
	xor l12(out[12], A[12], x);
	xor l13(out[13], A[13], x);
	xor l14(out[14], A[14], x);
	xor l15(out[15], A[15], x);
	xor l16(out[16], A[16], x);
	xor l17(out[17], A[17], x);
	xor l18(out[18], A[18], x);
	xor l19(out[19], A[19], x);
	xor l20(out[20], A[20], x);
	xor l21(out[21], A[21], x);
	xor l22(out[22], A[22], x);
	xor l23(out[23], A[23], x);
	xor l24(out[24], A[24], x);
	xor l25(out[25], A[25], x);
	xor l26(out[26], A[26], x);
	xor l27(out[27], A[27], x);
	xor l28(out[28], A[28], x);
	xor l29(out[29], A[29], x);
	xor l30(out[30], A[30], x);
	xor l31(out[31], A[31], x);
endmodule
