module fifo #(
    parameter WIDTH = 8,
    parameter DEPTH = 16
)(
    input clk,
    input rst,

    input [WIDTH-1:0] data_in,

    input wr_en,
    input rd_en,

    output reg [WIDTH-1:0] data_out,

    output fifo_full,
    output fifo_empty,

    output reg [4:0] fifo_count
);

reg [WIDTH-1:0] mem [0:DEPTH-1];

reg [4:0] wr_ptr;
reg [4:0] rd_ptr;

assign fifo_full  = (fifo_count == DEPTH);
assign fifo_empty = (fifo_count == 0);

always @(posedge clk)
begin
    if(rst)
    begin
        wr_ptr <= 0;
        rd_ptr <= 0;
        fifo_count <= 0;
        data_out <= 0;
    end
    else
    begin
        if(wr_en && !fifo_full)
        begin
            mem[wr_ptr] <= data_in;
            wr_ptr <= (wr_ptr + 1) % DEPTH;
            fifo_count <= fifo_count + 1;
        end

        if(rd_en && !fifo_empty)
        begin
            data_out <= mem[rd_ptr];
            rd_ptr <= (rd_ptr + 1) % DEPTH;
            fifo_count <= fifo_count - 1;
        end
    end
end

endmodule