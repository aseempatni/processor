`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:07:09 10/09/2014 
// Design Name: 
// Module Name:    registers 
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
module registers(output [31:0]rd1,output [31:0]rd2,input clk,input [3:0]rs,input [3:0]rt,input [3:0]rd,input [31:0]data,input write);
	reg [15:0]R[32:0];
	//copy a(rd1,R[rs]);
	assign rd1 = R[rs];
	//copy b(rd2,R[rt]);
	assign rd2 = R[rt];
	always @(posedge clk) begin
		if(write)
			R[rd] = data;
	end
endmodule

