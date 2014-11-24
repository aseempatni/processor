`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:58:02 10/16/2014
// Design Name:   Rtypeinst
// Module Name:   C:/AseemAshu/RtypeInstruction/testdatapath.v
// Project Name:  RtypeInstruction
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Rtypeinst
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testdatapath;

	// Inputs
	reg clk;
	reg reset;
	reg RegDst;
	reg ALUSrc;
	reg Mem2Reg;
	reg MemRead;
	reg MemWrite;
	reg RegWrite;
	reg PCSrc;
	reg [4:0] ALUOp;

	// Outputs
	wire [31:0] out;
	wire [5:0] op;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	Rtypeinst uut (
		.out(out), 
		.op(op), 
		.zero(zero), 
		.clk(clk), 
		.reset(reset), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.Mem2Reg(Mem2Reg), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.RegWrite(RegWrite), 
		.PCSrc(PCSrc), 
		.ALUOp(ALUOp)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		RegDst = 0;
		ALUSrc = 0;
		Mem2Reg = 1;
		MemRead = 0;
		MemWrite = 0;
		RegWrite = 1;
		PCSrc = 0;
		ALUOp = 0;

		// Wait 100 ns for global reset to finish
		#30
        
		clk = 0;
		reset = 0;
		RegDst = 0;
		ALUSrc = 0;
		Mem2Reg = 1;
		MemRead = 0;
		MemWrite = 0;
		RegWrite = 1;
		PCSrc = 0;
		ALUOp = 0;
		// Add stimulus here

		#100
        
		clk = 0;
		reset = 0;
		RegDst = 0;
		ALUSrc = 0;
		Mem2Reg = 1;
		MemRead = 0;
		MemWrite = 0;
		RegWrite = 1;
		PCSrc = 0;
		ALUOp = 0;
		// Add stimulus here

	end
   always #20 clk = ~clk; 
endmodule

