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
module registers(output [31:0]rd1,output [31:0]rd2,input clk,input reset,input [3:0]rs,input [3:0]rt,input [3:0]rd,input [31:0]data,input write);
	reg [31:0]R[15:0];
	//copy a(rd1,R[rs]);
	assign rd1[31:0] = R[rs];
	//copy b(rd2,R[rt]);
	assign rd2[31:0] = R[rt];
	
	always @(posedge clk) begin
		if(reset) begin
			R[0] = 3;
			R[1] = 2;
			R[2] = 4;
		end
		else begin
			if(write)
				R[rd] = data;
		end
	end
endmodule

