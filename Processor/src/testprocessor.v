`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:18:54 11/10/2014
// Design Name:   Processor
// Module Name:   C:/AseemAshu/RtypeInstruction/Processor/testprocessor.v
// Project Name:  Processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Processor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testprocessor;

	// Inputs
	reg reset;
	reg clk;

	// Outputs
	wire [31:0] out;
	wire [31:0] ans;

	// Instantiate the Unit Under Test (UUT)
	Processor uut (
		.out(out), 
		.ans(ans), 
		.reset(reset), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		reset = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
      reset = 0;
		// Add stimulus here

	end
   always #30 clk = ~clk;
endmodule

