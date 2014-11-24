`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:56:33 10/13/2014
// Design Name:   Rtypeinst
// Module Name:   C:/AseemAshu/RtypeInstruction/testrtypeinst.v
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

module testrtypeinst;

	// Inputs
	reg clk;
	reg reset;
	reg [3:0] rs;
	reg [3:0] rt;
	reg [3:0] rd;
	reg [31:0] data;
	reg write;
	reg [4:0] opcode;

	// Outputs
	wire [31:0] out;
	wire cout;
	wire [31:0] rd1;
	wire [31:0] rd2;

	// Instantiate the Unit Under Test (UUT)
	Rtypeinst uut (
		.out(out), 
		.cout(cout), 
		.rd1(rd1), 
		.rd2(rd2), 
		.clk(clk), 
		.reset(reset), 
		.rs(rs), 
		.rt(rt), 
		.rd(rd), 
		.data(data), 
		.write(write), 
		.opcode(opcode)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		rs = 0;
		rt = 1;
		rd = 2;
		data = 0;
		write = 0;
		opcode = 0;
		#40
		reset = 0;
		
		// Wait 100 ns for global reset to finish
		rs = 0;
		rt = 1;
		rd = 2;
		data = 0;
		write = 1;
		opcode = 0;
		#100;
		
		rs = 1;
		rt = 2;
		rd = 3;
		data = 0;
		write = 1;
		opcode = 4;
		#100;
		
		rs = 2;
		rt = 3;
		rd = 4;
		data = 0;
		write = 1;
		opcode = 0;
		#100;
		
		rs = 3;
		rt = 4;
		rd = 5;
		data = 0;
		write = 1;
		opcode = 4;
		#100;
      
		// Add stimulus here

	end
   always #20 clk = ~clk; 
endmodule

