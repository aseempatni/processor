`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:31 10/30/2014 
// Design Name: 
// Module Name:    controlunit 
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
module controlunit(
	output RegDst_w,
	output ALUSrc_w,
	output Mem2Reg_w,
	output MemRead_w,
	output MemWrite_w, 
	output RegWrite_w, 
	output PCSrc_w,
	output Push_w,
	output Pop_w,
	output [4:0]ALUOp_w,
	input reset,
	input clk, 
	output reg alusignal, 
	input[5:0]op_w);
	
	reg RegDst,ALUSrc,Mem2Reg,MemRead,MemWrite,RegWrite,PCSrc,Push,Pop;
	reg [4:0] ALUOp;
	reg [5:0] op;
	reg state;
	
	assign RegDst_w = RegDst;
	assign ALUSrc_w = ALUSrc;
	assign Mem2Reg_w = Mem2Reg;
	assign MemRead_w = MemRead;
	assign MemWrite_w = MemWrite;
	assign RegWrite_w = RegWrite;
	assign PCSrc_w = PCSrc;
	assign Push_w = Push;
	assign Pop_w = Pop;
	assign ALUOp_w[4:0] = ALUOp[4:0];
	
	always @* begin
		if (reset) begin
			state = 0;
			RegDst 	= 0	;
			ALUSrc 	= 0	;
			Mem2Reg 	= 0	;
			MemRead 	= 0	;
			MemWrite = 0	;
			RegWrite = 0	;
			PCSrc 	= 0	;
			Push 		= 0	;
			Pop		= 0	;
			ALUOp 	= 5'b00000;
		end
		else begin
			case(op_w)
				6'b000000 : begin // Add
					RegDst 	= 1	;
					ALUSrc 	= 0	;
					Mem2Reg 	= 0	;
					MemRead 	= 0	;
					MemWrite = 0	;
					RegWrite = 1	;
					PCSrc 	= 0	;
					Push 		= 0	;
					Pop		= 0	;
					ALUOp 	= 5'b00000;
					end
				6'b000100 : begin // Sub
					RegDst 	= 1	;
					ALUSrc 	= 0	;
					Mem2Reg 	= 0	;
					MemRead 	= 0	;
					MemWrite = 0	;
					RegWrite = 1	;
					PCSrc 	= 0	;
					Push 		= 0	;
					Pop		= 0	;
					ALUOp 	= 5'b00100;
					end
				6'b011000 : begin // And
					RegDst 	= 1	;
					ALUSrc 	= 0	;
					Mem2Reg 	= 0	;
					MemRead 	= 0	;
					MemWrite = 0	;
					RegWrite = 1	;
					PCSrc 	= 0	;
					Push 		= 0	;
					Pop		= 0	;
					ALUOp 	= 5'b11000;
					end
				6'b011110 : begin // Or
					RegDst 	= 1	;
					ALUSrc 	= 0	;
					Mem2Reg 	= 0	;
					MemRead 	= 0	;
					MemWrite = 0	;
					RegWrite = 1	;
					PCSrc 	= 0	;
					Push 		= 0	;
					Pop		= 0	;
					ALUOp 	= 5'b11110;
					end
				6'b010110 : begin // Xor
					RegDst 	= 1	;
					ALUSrc 	= 0	;
					Mem2Reg 	= 0	;
					MemRead 	= 0	;
					MemWrite = 0	;
					RegWrite = 1	;
					PCSrc 	= 0	;
					Push 		= 0	;
					Pop		= 0	;
					ALUOp 	= 5'b10110;
					end
				6'b101010 : begin // call
					state = 1;			//jump instr
					RegDst 	= 0	;
					ALUSrc 	= 0	;
					Mem2Reg 	= 0	;
					MemRead 	= 0	;
					MemWrite = 0	;
					RegWrite = 0	;
					PCSrc 	= 1	;
					Push 		= 1	;
					Pop		= 0	;
					ALUOp 	= 5'b00000;
					end
				6'b100000 : begin // LD
					RegDst 	= 0	;
					ALUSrc 	= 1	;
					Mem2Reg 	= 1	;
					MemRead 	= 1	;
					MemWrite = 0	;
					RegWrite = 1	;
					PCSrc 	= 0	;
					Push 		= 0	;
					Pop		= 0	;
					ALUOp 	= 5'b00000;
					end				
				6'b100001 : begin // ST
					RegDst 	= 0	;
					ALUSrc 	= 1	;
					Mem2Reg 	= 0	;
					MemRead 	= 0	;
					MemWrite = 1	;
					RegWrite = 0	;
					PCSrc 	= 0	;
					Push 		= 0	;
					Pop		= 0	;
					ALUOp 	= 5'b00000;
					end
				6'b101111 : begin // Movei
					RegDst 	= 0	;
					ALUSrc 	= 1	;
					Mem2Reg 	= 0	;
					MemRead 	= 0	;
					MemWrite = 0	;
					RegWrite = 1	;
					PCSrc 	= 0	;
					Push 		= 0	;
					Pop		= 0	;
					ALUOp 	= 5'b00000;
					end






				default begin
					end
			endcase
		end
		op = op_w;
	end
endmodule

/*
		6'b101010 : begin // call
			RegDst 	= 1	;
			ALUSrc 	= 0	;
			Mem2Reg 	= 0	;
			MemRead 	= 0	;
			MemWrite = 0	;
			RegWrite = 1	;
			PCSrc 	= 0	;
			PCSrc2 	= 0	;
			Push 		= 0	;
			ALUOp 	= 5'b10110;
			end
			*/