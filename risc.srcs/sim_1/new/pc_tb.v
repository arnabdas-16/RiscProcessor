`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 19:08:48
// Design Name: 
// Module Name: pc_tb
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


module pc_tb();

reg clk, reset, pc_write;
reg [15:0] pc_next;
wire [15:0] pc_out;

pc dut (
    .clk(clk),
    .reset(reset),
    .pc_write(pc_write),
    .pc_next(pc_next),
    .pc_out(pc_out)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1; pc_write = 0; pc_next = 0;
    #10 reset = 0;

    pc_write = 1; pc_next = 16'd1;
    #10 pc_next = 16'd2;
    #10 pc_write = 0;      // PC freezes
    #10 pc_write = 1; pc_next = 16'd3;
    #10 $finish;
end

endmodule
