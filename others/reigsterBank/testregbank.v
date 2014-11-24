`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:18:11 10/09/2014
// Design Name:   registers
// Module Name:   C:/AseemAshu/registerbank/testregbank.v
// Project Name:  registerbank
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: registers
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testregbank;

	// Inputs
	reg clk;
	reg [3:0] rs;
	reg [3:0] rt;
	reg [3:0] rd;
	reg [31:0] data;
	reg write;

	// Outputs
	wire [31:0] rd1;
	wire [31:0] rd2;

	// Instantiate the Unit Under Test (UUT)
	registers uut (
		.rd1(rd1), 
		.rd2(rd2), 
		.clk(clk), 
		.rs(rs), 
		.rt(rt), 
		.rd(rd), 
		.data(data), 
		.write(write)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rs = 0;
		rt = 3;
		rd = 0;
		data = 234;
		write = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		
		clk = 0;
		rs = 0;
		rt = 3;
		rd = 3;
		data = 340;
		write = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
     always #20 clk = ~clk;
endmodule

