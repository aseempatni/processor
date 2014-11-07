`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:17 10/16/2014 
// Design Name: 
// Module Name:    insBank 
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
module insBank(output [31:0] out, input clk, input reset, input [31:0]addr );
	reg [7:0]R[255:0];
	reg [31:0]temp;
	always @(posedge clk) begin
		if(reset) begin
			//Initialize instructions here
//			000000 0000 0001 1010 000000 00000000
			// Load value in Reg 1
			R[3] = 8'b00000111;
			R[2] = 8'b00000000;
			R[1] = 8'b00000100;
			R[0] = 8'b10111100;
			// Store value 2 in reg
			R[7] = 8'b00000101;
			R[6] = 8'b00000000;
			R[5] = 8'b00001000;
			R[4] = 8'b10111100;
			// Add 1 and 2
			R[11] = 8'b00000000;
			R[10] = 8'b11000000;
			R[9]  = 8'b01001000;
			R[8]  = 8'b00000000;
			// Store result in memory
			R[15] = 8'b00000000;
			R[14] = 8'b00000000;
			R[13] = 8'b00001100;
			R[12] = 8'b10000100;
			// Load from memory
			R[19] = 8'b00000000;
			R[18] = 8'b00000000;
			R[17] = 8'b00010000;
			R[16] = 8'b10000000;

			temp[31:0] = 0;
		end
		else begin
			temp[7:0] = R[addr+3][7:0];
			temp[15:8] = R[addr+2][7:0];
			temp[23:16] = R[addr+1][7:0];
			temp[31:24] = R[addr][7:0];
		end
	end
	assign out[31:0] = temp[31:0];
endmodule
