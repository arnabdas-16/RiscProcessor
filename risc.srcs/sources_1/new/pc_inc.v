`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 19:06:40
// Design Name: 
// Module Name: pc_inc
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pc_inc (
    input  wire [15:0] pc_in,
    output wire [15:0] pc_plus1
);
assign pc_plus1 = pc_in + 16'd1;
endmodule

