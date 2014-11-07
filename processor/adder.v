`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:26:19 09/04/2014 
// Design Name: 
// Module Name:    adder 
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
module adder(output[31:0] sum,output cout,input[31:0] a,input[31:0] b,input cin);
	wire c;
	internibblecarrylookahead16bit f0 (sum[15:0], c, a[15:0], b[15:0], cin);
	internibblecarrylookahead16bit f1 (sum[31:16], cout, a[31:16], b[31:16], c);
endmodule
