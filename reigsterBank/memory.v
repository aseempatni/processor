`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:32:36 10/09/2014 
// Design Name: 
// Module Name:    memory 
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
module memory(output [31:0] data, input clk, input [31:0] addr, input [31:0] wdata, input ren, input wen);
	reg [2047:0]R[7:0];

	always @(posedge clk) begin
	if(ren) begin
		assign data[7:0] = R[addr];
		assign data[15:8] = R[addr+1];
		assign data[23:16] = R[addr+2];
		assign data[31:24] = R[addr+3];
	end
		if(wen) begin
			R[addr] = wdata[7:0];
			R[addr+1] = wdata[15:8];
			R[addr+2] = wdata[23:16];
			R[addr+3] = wdata[31:24];
		end
	end
endmodule
