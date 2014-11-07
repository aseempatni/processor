`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:31 10/13/2014 
// Design Name: 
// Module Name:    Rtypeinst 
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
module Rtypeinst(output [31:0]out,output cout,output [31:0]rd1,output [31:0]rd2,input clk,input reset,input [3:0]rs,input [3:0]rt,input [3:0]rd,input [31:0]data,input write,input [4:0]opcode);
	registers R(rd1,rd2,clk,reset,rs,rt,rd,out,write);
	alu A(out,cout,rd1,rd2,opcode);
	
	memory m ()
endmodule
