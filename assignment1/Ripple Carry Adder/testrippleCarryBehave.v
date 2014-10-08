`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:30:41 08/07/2014
// Design Name:   rippleCarryAdder
// Module Name:   C:/AseemAshu/ass1/testrippleCarryBehave.v
// Project Name:  ass1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rippleCarryAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testrippleCarryBehave;

	// Inputs
	reg[31:0] a;
	reg[31:0] b;

	// Outputs
	wire[31:0] sum;

	// Instantiate the Unit Under Test (UUT)
	rippleCarryAdder uut (
		.a(a), 
		.b(b), 
		.sum(sum)
	);

	initial begin
		// Initialize Inputs
		a = 127;
		b = 2;

		// Wait 100 ns for global reset to finish
		#1;
        
		// Add stimulus here

	end
      
endmodule

