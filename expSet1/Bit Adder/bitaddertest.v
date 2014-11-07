`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:58:27 08/11/2014
// Design Name:   bitAdder
// Module Name:   C:/AseemAshu/BitAdderFPGA/bitaddertest.v
// Project Name:  BitAdderFPGA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bitAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bitaddertest;

	// Inputs
	reg bit1;
	reg bit2;
	reg cin;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	bitAdder uut (
		.bit1(bit1), 
		.bit2(bit2), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		bit1 = 1;
		bit2 = 0;
		cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

