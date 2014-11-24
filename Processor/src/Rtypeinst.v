`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:31 10/13/2014 
// Design Name: 
// Module Name:    Rtypeinst 
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
module Rtypeinst(output [31:0]out,output [31:0]ans,output [5:0]op, output zero, input clk,input reset,input RegDst, input ALUSrc, input Mem2Reg, input MemRead, input MemWrite, input RegWrite, input PCSrc, input [4:0] ALUOp, input push, input pop, input halt);
	wire [31:0]signextout;	// Output after sign extension
	wire [31:0]slout;			// Output after shifting left
	wire [31:0] jsum;			// Adder out after Jump Sum
	wire [31:0] pcsum;		// PC + 4
	wire [3:0]rd;				// Selected value of write register address
	supply0 gnd;
	wire [31:0]temp;			// Used for incrementing program counter
	assign temp=4;			// Constant for addition
	wire [31:0]pcin; 			// Program Counter Input
	
	reg [31:0]pc_buff;				// Program Counter
	reg [31:0]pc;				// Program Counter
	
	wire [31:0]instr;			// Instruction
	
	wire [31:0]rwd;			// Regoster Write Data
	assign op[5:0] = instr[31:26];		// Send to Control Unit for decoding
	
	wire [31:0]read1;			// Read Data 1
	wire [31:0]read2;			// Read Data 2
	
	reg [31:0]stack;			// REgister used for call and return
	
	wire [31:0]pcint;					// For input to pcnext2 mux
	
	// Garbage bits
	wire shit1;
	wire shit2;
	
	wire [31:0]memout;		// Memory Read Data
	wire [31:0]aluin2;		// Second input for ALU


	always @(negedge clk) begin
		if (reset) begin
			pc = -4;
			stack = 0;
		end
		else begin
			if (~halt) begin
				pc_buff = pcsum;
				if (push)
					stack = pcsum;
				pc = pcin;
			end
		end
	end
	
	// Instruction Bank
	insBank ib (instr, clk, reset, pc);
	
	mux2to1bus rbw (rwd, out, memout, Mem2Reg);							// Register Write Data Select
	mux2to14bit rwa (rd, instr[21:18], instr [17:14],RegDst);		// Register Write Address Select
	
	// Register Bank
	registers R(ans,read1,read2,clk,reset,instr [25:22],instr [21:18],rd,rwd,RegWrite);

	// Sign Instruction Mmodule
	signext s (signextout, instr[15:0]);

	mux2to1bus alui (aluin2, read2, signextout, ALUSrc); 				// ALU Input 2 sselect 

	// ALU
	alu A(out,zero,read1,aluin2,ALUOp);
	
	// Memory Bank
	memory m (memout ,clk, reset, out, read2, MemRead, MemWrite);

	// Shift Left 2
	shiftleft2 sl (slout, signextout);
	
	// Adder for PC
	adder apc( pcsum,shit1,pc,temp,gnd);
	
	// Adder for Conditional Jump
	adder ajmp( jsum,shit2,pc_buff,slout,gnd);
	
	
	// Select next PC value
	mux2to1bus pcnext (pcint, pcsum, jsum, PCSrc);
	mux2to1bus pcnext2 (pcin, pcint, stack, pop);

	
endmodule
