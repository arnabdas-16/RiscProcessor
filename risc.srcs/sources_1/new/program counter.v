module pc(
    input  wire        clk,
    input  wire        reset,
    input  wire        pc_write,
    input  wire [15:0] pc_next,
    output reg  [15:0] pc_out
);

always @(posedge clk or posedge reset) begin
    if (reset)
        pc_out <= 16'd0;
    else if (pc_write)
        pc_out <= pc_next;
end

endmodule
