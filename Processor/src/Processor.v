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
	output [31:0] ans,
	input reset,
	input clk);
	wire cout;
	wire [4:0] ALUOp;
	wire [5:0] op;
	// Control Signals
	wire RegDst,ALUSrc,Mem2Reg,MemRead,MemWrite,PCSrc,Push,Pop;
	wire halt;
	
	// Branch Instruction Computation
	wire zero, temp;
	assign temp =	|out;
						
	assign zero = ~temp;
	wire sign;
	assign sign = out[31];
	
	// Processing Unit
	Rtypeinst R(
		.out(out),
		.ans(ans),
		.op(op),
		.zero(cout),
		.clk(clk),
		.reset(reset),
		// Control Signals In
		.RegDst(RegDst),
		.ALUSrc(ALUSrc),
		.Mem2Reg(Mem2Reg),
		.MemRead(MemRead),
		.MemWrite(MemWrite),
		.RegWrite(RegWrite),
		.PCSrc(PCSrc),
		.ALUOp(ALUOp),
		.push(Push),
		.pop(Pop),
		.halt(halt)
		);


	// Control Unit
	controlunit cu (halt,RegDst,ALUSrc,Mem2Reg,MemRead,MemWrite,RegWrite,PCSrc,Push,Pop,ALUOp,reset,clk,alusignal,op, zero, sign);
	

endmodule
