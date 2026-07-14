module traffic_generator #(
    parameter DATA_WIDTH = 8
)
(
    input clk,
    input rst,
    input enable,

    output reg [DATA_WIDTH-1:0] packet_data,
    output reg packet_valid
);

reg [15:0] packet_counter;


always @(posedge clk)
begin

    if(rst)
    begin
        packet_data <= 0;
        packet_valid <= 0;
        packet_counter <= 0;
    end

    else
    begin

        if(enable)
        begin
            packet_counter <= packet_counter + 1;

            packet_data <= packet_counter[DATA_WIDTH-1:0];

            packet_valid <= 1;
        end

        else
        begin
            packet_valid <= 0;
        end

    end

end

endmodule