`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:07:25 08/07/2014
// Design Name:   bitAdderstruct
// Module Name:   C:/AseemAshu/ass1/testbitAdderstruct.v
// Project Name:  ass1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bitAdderstruct
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbitAdderstruct;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	bitAdderstruct uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#50;
      a = 0;
		b = 0;
		cin = 1;
		#50;
		a = 0;
		b = 1;
		cin = 1;
		#50;
		a = 1;
		b = 1;
		cin = 1;
		#50;
		// Add stimulus here

	end
      
endmodule

