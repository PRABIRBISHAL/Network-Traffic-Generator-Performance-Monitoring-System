
module tb_top;


reg clk;
reg rst;
reg enable;

top DUT
(
    .clk(clk),
    .rst(rst),
    .enable(enable)
);

always
    #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;
    enable = 0;


    #20;
    rst = 0;

    #20;
    enable = 1;

    #2000;

    $display("");
    $display("====================================");
    $display("      NETWORK TRAFFIC REPORT");
    $display("====================================");

    $display("Sent Packets      = %0d",
             DUT.sent_packets);

    $display("Received Packets  = %0d",
             DUT.received_packets);

    $display("Dropped Packets   = %0d",
             DUT.dropped_packets);

    $display("Loss Rate         = %0d %% ",
             DUT.loss_rate);

    $display("Throughput        = %0d",
             DUT.throughput);

    $display("Current Latency   = %0d",
             DUT.latency);

    $display("Average Latency   = %0d",
             DUT.average_latency);

    $display("Maximum Latency   = %0d",
             DUT.max_latency);

    $display("FIFO Count        = %0d",
             DUT.fifo_count);


    if(DUT.sent_packets ==
       DUT.received_packets +
       DUT.dropped_packets)
    begin
        $display("");
        $display("PACKET ACCOUNTING CHECK : PASS");
    end
    else
    begin
        $display("");
        $display("PACKET ACCOUNTING CHECK : FAIL");
    end

    if(DUT.received_packets <=
       DUT.sent_packets)
    begin
        $display("RECEIVED COUNT CHECK    : PASS");
    end
    else
    begin
        $display("RECEIVED COUNT CHECK    : FAIL");
    end

    if(DUT.dropped_packets <=
       DUT.sent_packets)
    begin
        $display("DROP COUNT CHECK        : PASS");
    end
    else
    begin
        $display("DROP COUNT CHECK        : FAIL");
    end

    if(DUT.max_latency >=
       DUT.average_latency)
    begin
        $display("LATENCY CHECK           : PASS");
    end
    else
    begin
        $display("LATENCY CHECK           : FAIL");
    end

   
    if(DUT.congestion)
        $display("CONGESTION STATUS       : DETECTED");
    else
        $display("CONGESTION STATUS       : NORMAL");

  

    $display("");
    $display("====================================");
    $display("        TEST COMPLETED");
    $display("====================================");

    $finish;

end

endmodule