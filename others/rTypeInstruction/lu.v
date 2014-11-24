`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:31:21 09/01/2014 
// Design Name: 
// Module Name:    lu 
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
module lu(output [31:0]out, input [31:0]A, input [31:0]B, input [3:0]sel);
	luunit l0 (out[0] , A[0] , B[0] , sel[3:0]);
	luunit l1 (out[1] , A[1] , B[1] , sel[3:0]);
	luunit l2 (out[2] , A[2] , B[2] , sel[3:0]);
	luunit l3 (out[3] , A[3] , B[3] , sel[3:0]);
	luunit l4 (out[4] , A[4] , B[4] , sel[3:0]);
	luunit l5 (out[5] , A[5] , B[5] , sel[3:0]);
	luunit l6 (out[6] , A[6] , B[6] , sel[3:0]);
	luunit l7 (out[7] , A[7] , B[7] , sel[3:0]);
	luunit l8 (out[8] , A[8] , B[8] , sel[3:0]);
	luunit l9 (out[9] , A[9] , B[9] , sel[3:0]);
	luunit l10(out[10], A[10], B[10], sel[3:0]);
	luunit l11(out[11], A[11], B[11], sel[3:0]);
	luunit l12(out[12], A[12], B[12], sel[3:0]);
	luunit l13(out[13], A[13], B[13], sel[3:0]);
	luunit l14(out[14], A[14], B[14], sel[3:0]);
	luunit l15(out[15], A[15], B[15], sel[3:0]);
	luunit l16(out[16], A[16], B[16], sel[3:0]);
	luunit l17(out[17], A[17], B[17], sel[3:0]);
	luunit l18(out[18], A[18], B[18], sel[3:0]);
	luunit l19(out[19], A[19], B[19], sel[3:0]);
	luunit l20(out[20], A[20], B[20], sel[3:0]);
	luunit l21(out[21], A[21], B[21], sel[3:0]);
	luunit l22(out[22], A[22], B[22], sel[3:0]);
	luunit l23(out[23], A[23], B[23], sel[3:0]);
	luunit l24(out[24], A[24], B[24], sel[3:0]);
	luunit l25(out[25], A[25], B[25], sel[3:0]);
	luunit l26(out[26], A[26], B[26], sel[3:0]);
	luunit l27(out[27], A[27], B[27], sel[3:0]);
	luunit l28(out[28], A[28], B[28], sel[3:0]);
	luunit l29(out[29], A[29], B[29], sel[3:0]);
	luunit l30(out[30], A[30], B[30], sel[3:0]);
	luunit l31(out[31], A[31], B[31], sel[3:0]);
endmodule
