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
module memory(output [31:0] data, input clk,input reset, input [31:0] addr, input [31:0] wdata, input ren, input wen);
	reg [2047:0]R[7:0];
	reg [31:0]temp;
	always @(posedge clk) begin
		if(reset)
			temp[31:0] = 0;
		else begin
			if(ren) begin
				temp[7:0] = R[addr];
				temp[15:8] = R[addr+1];
				temp[23:16] = R[addr+2];
				temp[31:24] = R[addr+3];
			end
			if(wen) begin
				R[addr] = wdata[7:0];
				R[addr+1] = wdata[15:8];
				R[addr+2] = wdata[23:16];
				R[addr+3] = wdata[31:24];
			end
		end
	end
	assign data[31:0] = temp[31:0];
endmodule
