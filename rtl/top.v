
module top
(
    input clk,
    input rst,
    input enable,
    output [31:0] latency,
    output [31:0] average_latency,
    output [31:0] max_latency,
    output [31:0] throughput,
    output [31:0] sent_packets,
    output [31:0] received_packets,
    output [31:0] dropped_packets,
    output [31:0] loss_rate,
    output congestion
);

wire [7:0] packet_data;
wire packet_valid;
wire [7:0] fifo_data_out;
wire fifo_full;
wire fifo_empty;
wire [4:0] fifo_count;
wire packet_out_valid;

traffic_generator TG
(
    .clk(clk),
    .rst(rst),
    .enable(enable),
    .packet_data(packet_data),
    .packet_valid(packet_valid)
);

fifo FIFO1
(
    .clk(clk),
    .rst(rst),
    .data_in(packet_data),
    .wr_en(packet_valid),
    .rd_en(!fifo_empty),
    .data_out(fifo_data_out),
    .fifo_full(fifo_full),
    .fifo_empty(fifo_empty),
    .fifo_count(fifo_count)
);

assign packet_out_valid = !fifo_empty;

latency_analyzer LA
(
    .clk(clk),
    .rst(rst),

    .packet_in_valid(packet_valid),
    .packet_out_valid(packet_out_valid),

    .latency(latency),
    .average_latency(average_latency),
    .max_latency(max_latency)
);

throughput_calculator TC
(
    .clk(clk),
    .rst(rst),

    .packet_received(packet_out_valid),

    .throughput(throughput)
);


statistics_engine SE
(
    .clk(clk),
    .rst(rst),

    .packet_valid(packet_valid),

    .fifo_count(fifo_count),

    .sent_packets(sent_packets),
    .received_packets(received_packets),
    .dropped_packets(dropped_packets),

    .loss_rate(loss_rate),
    .congestion(congestion)
);

endmodule