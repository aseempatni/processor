`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:50:20 08/14/2014 
// Design Name: 
// Module Name:    internibblecarrylookahead16bit 
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
module internibblecarrylookahead16bit(output [15:0]S, output cout, input [15:0]A, input [15:0]B, input cin);
	wire [3:1]C;
	wire [3:0]GG;
	wire [3:0]PG;
	wire t0,t2,t3,t4,t5,t6,t7,t8,t9,t10;
	// Starting calculation
	carrylookahead4bit fun0(S[3:0], GG[0], PG[0], A[3:0], B[3:0], cin);
	carrylookahead4bit fun1(S[7:4], GG[1], PG[1], A[7:4], B[7:4], C[1]);
	carrylookahead4bit fun2(S[11:8], GG[2], PG[2], A[11:8], B[11:8], C[2]);
	carrylookahead4bit fun3(S[15:12], GG[3], PG[3], A[15:12], B[15:12], C[3]);

	and a0(t0, PG[0], cin);
	or  a1(C[1], GG[0], t0);
	and a2(t2, PG[1], GG[0]);		
	and a3(t3, PG[1], PG[0], cin);		
	or  a4(C[2], GG[1], t2, t3);
	and a5(t4, PG[2], GG[1]);		
	and a6(t5, PG[2], PG[1], GG[0]);
	and a7(t6, PG[2], PG[1], PG[0], cin);
	or  a8(C[3], GG[2],  t4, t5, t6);
	and a9(t7, PG[3], GG[2]);
	and a10(t8, PG[3], PG[2], GG[1]);
	and a11(t9, PG[3], PG[2], PG[1], GG[0]);
	and a12(t10, PG[3], PG[2], PG[1], PG[0], cin);
	or  a13(cout, GG[3], t7, t8, t9, t10);
endmodule
