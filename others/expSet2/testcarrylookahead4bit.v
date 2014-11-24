`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:22:46 08/14/2014
// Design Name:   carrylookahead4bit
// Module Name:   C:/AseemAshu/ass2/testcarrylookahead4bit.v
// Project Name:  ass2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: carrylookahead4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testcarrylookahead4bit;

	reg [3:0] A;
	reg [3:0] B;
	reg Cin;
	// Outputs
	wire [3:0] S;
	wire G;
	wire P;

	// Instantiate the Unit Under Test (UUT)
	carrylookahead4bit uut (
		.S(S), 
		.g(G),
		.p(P),
		.A(A),
		.B(B),
		.C(Cin)
	);

	initial begin
		// Initialize Inputs
		A = 8;
		B = 8;
		Cin = 1;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

