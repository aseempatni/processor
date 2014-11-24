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
			// R1 = input 1
			R[3] = 8'b00010010;
			R[2] = 8'b00000000;
			R[1] = 8'b00000100;
			R[0] = 8'b10111100;
			// R2 = input 2
			R[7] = 8'b00001100;
			R[6] = 8'b00000000;
			R[5] = 8'b00001000;
			R[4] = 8'b10111100;
			
			// Loop starts here
			
			// R3 = R2 - R1
			R[11] = 8'b00000000;
			R[10] = 8'b11000000;
			R[9]  = 8'b10000100;
			R[8]  = 8'b00010000;
			// If R3 == 0 then go out of loop
			R[15] = 8'b00000110; // +6
			R[14] = 8'b00000000;
			R[13] = 8'b11000000;
			R[12] = 8'b10011100;
			// If R3 > 0 goto 28
			R[19] = 8'b00000011; // =3
			R[18] = 8'b00000000;
			R[17] = 8'b11000000;
			R[16] = 8'b10011000;
			// else R1 = -R3
			R[23] = 8'b00000000;
			R[22] = 8'b01000000;
			R[21]  = 8'b00001100;
			R[20]  = 8'b00010000;
			// Goto beginning of loop 
			R[27] = 8'b11111100; // -4
			R[26] = 8'b11111111;
			R[25] = 8'b00000000;
			R[24] = 8'b10010000;
			// R2 = R3
			R[31] = 8'b00000000;
			R[30] = 8'b10000000;
			R[29]  = 8'b00001100;
			R[28]  = 8'b10111000;
			// Goto beginning of loop 
			R[35] = 8'b11111010; // -6
			R[34] = 8'b11111111;
			R[33] = 8'b00000000;
			R[32] = 8'b10010000;
			
			// Store answer in R4
			R[39] = 8'b00000000;
			R[38] = 8'b00000000;
			R[37] = 8'b00000101;
			R[36] = 8'b10111000;
			
			
			// No OP
			R[43] = 8'b00000000;
			R[42] = 8'b00000000;
			R[41] = 8'b00000000;
			R[40] = 8'b10110100;
			
			// Halt
			R[47] = 8'b00000000;
			R[46] = 8'b00000000;
			R[45] = 8'b00000000;
			R[44] = 8'b10110000;
			/*
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
			// Go back to 1st instr
			R[23] = 8'b11111100;
			R[22] = 8'b11111111;
			R[21] = 8'b00000000;
			R[20] = 8'b10010000;
			*/
			
			
			
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
