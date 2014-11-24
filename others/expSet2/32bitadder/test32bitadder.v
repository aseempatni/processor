`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:55:18 08/21/2014
// Design Name:   thirtytwobitlookaheadadder
// Module Name:   C:/AseemAshu/ass2/test32bitadder.v
// Project Name:  ass2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: thirtytwobitlookaheadadder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test32bitadder;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg cin;

	// Outputs
	wire [31:0] S;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	thirtytwobitlookaheadadder uut (
		.S(S), 
		.cout(cout), 
		.A(A), 
		.B(B), 
		.cin(cin)
	);

	initial begin
		// Initialize Inputs
		A = 0'b10000000000000000000000000000000;
		B = 0'b10000000000000000000000000000000;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
     
		// Add stimulus here

	end
      
endmodule

