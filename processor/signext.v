`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:06:52 10/16/2014 
// Design Name: 
// Module Name:    signext 
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
module signext(output [31:0]o, input [15:0]i);
	assign o[31] = i[15];
	assign o[30] = i[15];
	assign o[29] = i[15];
	assign o[28] = i[15];
	assign o[27] = i[15];
	assign o[26] = i[15];
	assign o[25] = i[15];
	assign o[24] = i[15];
	assign o[23] = i[15];
	assign o[22] = i[15];
	assign o[21] = i[15];
	assign o[20] = i[15];
	assign o[19] = i[15];
	assign o[18] = i[15];
	assign o[17] = i[15];
	assign o[16] = i[15];
	assign o[15:0] = i[15:0];
endmodule
