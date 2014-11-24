`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:16:11 08/14/2014
// Design Name:   internibblecarrylookahead16bit
// Module Name:   C:/AseemAshu/ass2/testinternibblecarrylookahead16bit.v
// Project Name:  ass2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: internibblecarrylookahead16bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testinternibblecarrylookahead16bit;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg cin;

	// Outputs
	wire [15:0] S;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	internibblecarrylookahead16bit uut (
		.S(S), 
		.cout(cout), 
		.A(A), 
		.B(B), 
		.cin(cin)
	);

	initial begin
		// Initialize Inputs
		A = 120;
		B = 7;
		cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

