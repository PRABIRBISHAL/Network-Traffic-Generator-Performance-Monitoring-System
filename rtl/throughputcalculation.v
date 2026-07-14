module throughput_calculator
(
input clk,
input rst,

input packet_received,

output reg [31:0] throughput
);


reg [31:0] packet_counter;

reg [31:0] time_counter;


parameter WINDOW = 100;



always @(posedge clk)
begin


if(rst)
begin

packet_counter <= 0;

time_counter <= 0;

throughput <= 0;

end


else
begin


if(packet_received)
packet_counter <= packet_counter + 1;



if(time_counter == WINDOW)
begin

throughput <= packet_counter;

packet_counter <= 0;

time_counter <= 0;

end


else
begin

time_counter <= time_counter + 1;

end


end


end


endmodule