`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:40 10/30/2014 
// Design Name: 
// Module Name:    Processor 
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
module Processor(
	// input [31:0] instr, 
	output [31:0] out,
	input reset,
	input clk);
	
	wire [4:0] ALUOp;
	wire [5:0] op;
	// Control Signals
	wire RegDst,ALUSrc,Mem2Reg,MemRead,MemWrite,PCSrc,Push,Pop;
	
	// Processing Unit
	Rtypeinst R(out[31:0],op[5:0],
			zero,
			clk,reset,
			// Control Signals In
			RegDst,ALUSrc,Mem2Reg,MemRead,MemWrite,RegWrite,PCSrc,ALUOp[4:0],Push,Pop);

	// Control Unit
	controlunit cu (RegDst,ALUSrc,Mem2Reg,MemRead,MemWrite,RegWrite,PCSrc,Push,Pop,ALUOp[4:0],reset,clk,alusignal,op[5:0]);
	

endmodule
