`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:30:00 09/04/2014 
// Design Name: 
// Module Name:    au 
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
module au(output [31:0]out,output cout,input [31:0]A,input [31:0]B,input [2:0]select);
	wire [31:0]one;
	assign one = 1;
	wire [31:0]temp1;	//reserved for constant location
	wire [31:0]temp2;
	wire [31:0]in;		//to store the value after mux4
	wire [31:0]fin;
	//select[0] is for addition or subtraction
	//select[1] is to diffrentiate between i and not i operations
	//select[2] is differentiate between increment, decrement or add
	mux4to1bus M0(in,B,temp1,one,temp2,select[1:0]);
	xorbus X120(fin,in,select[2]);
	//call the adder on input
	adder A0(out,cout,A,fin,select[2]);
endmodule
