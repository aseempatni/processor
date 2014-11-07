`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:28:01 08/07/2014 
// Design Name: 
// Module Name:    bitAdder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bitAdder(input bit1,input bit2,input cin,output sum,output cout);
	assign sum = bit1 ^bit2 ^ cin;
	assign cout = (bit1 & bit2) | (bit2 & cin) | (cin & bit1);
endmodule
