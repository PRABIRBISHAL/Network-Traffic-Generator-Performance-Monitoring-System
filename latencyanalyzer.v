module latency_analyzer
(
input clk,
input rst,

input packet_in_valid,
input packet_out_valid,

output reg [31:0] latency,
output reg [31:0] average_latency,
output reg [31:0] max_latency
);


reg [31:0] clock_counter;

reg [31:0] entry_time;

reg [31:0] total_latency;

reg [31:0] packet_count;



always @(posedge clk)
begin

if(rst)
begin

clock_counter <= 0;

entry_time <= 0;

latency <= 0;

average_latency <= 0;

max_latency <= 0;

total_latency <= 0;

packet_count <= 0;

end


else
begin

clock_counter <= clock_counter + 1;



if(packet_in_valid)
begin

entry_time <= clock_counter;

end



if(packet_out_valid)
begin

latency <= clock_counter-entry_time;


total_latency <= total_latency + latency;


packet_count <= packet_count + 1;



average_latency <=
(total_latency+latency)/
(packet_count+1);



if(latency > max_latency)
begin

max_latency <= latency;

end


end

end

end

endmodule