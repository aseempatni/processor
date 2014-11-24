`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:48:40 08/14/2014 
// Design Name: 
// Module Name:    carrylookahead4bit 
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
module carrylookahead4bit(output [3:0]S,output g,output p,input [3:0]A,input [3:0]B,input C);
	wire [3:0]P;
	wire [3:0]G;
	//Calculating Propogate and Generate
	generate_propogate GP0(G[0],P[0],A[0],B[0]);
	generate_propogate GP1(G[1],P[1],A[1],B[1]);
	generate_propogate GP2(G[2],P[2],A[2],B[2]);
	generate_propogate GP3(G[3],P[3],A[3],B[3]);
	//Calculating carry
	wire t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,C1,C2,C3,g0,g1,g2;
	and m0(t0,P[0],C);
	and m1(t1,P[1],G[0]);
	and m2(t2,P[1],P[0],C);
	and m3(t3,P[2],G[1]);
	and m4(t4,P[2],P[1],G[0]);
	and m5(t5,P[2],P[1],P[0],C);
	and m6(t6,P[3],G[2]);
	and m7(t7,P[3],P[2],G[1]);
	and m8(t8,P[3],P[2],P[1],G[0]);
	and m9(t9,P[3],P[2],P[1],P[0],C);
	or  n1(C1,G[0],t0);
	or  n2(C2,G[1],t1,t2);
	or  n3(C3,G[2],t3,t4,t5);
	//Calculating the sums
	xor s0(S[0],A[0],B[0],C);
	xor s1(S[1],A[1],B[1],C1);
	xor s2(S[2],A[2],B[2],C2);
	xor s3(S[3],A[3],B[3],C3);
	//Calculating the Group Generate and Propogate
	and f0(g0,P[3],G[2]);
	and f1(g1,P[3],P[2],G[1]);
	and f2(g2,P[3],P[2],P[1],G[0]);
	and f3(p,P[3],P[2],P[1],P[0]);
	or  f4(g,G[3],g0,g1,g2);
	
	
endmodule
