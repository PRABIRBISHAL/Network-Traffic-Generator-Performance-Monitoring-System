module statistics_engine
(
input clk,
input rst,

input packet_valid,

input [4:0] fifo_count,


output reg [31:0] sent_packets,

output reg [31:0] received_packets,

output reg [31:0] dropped_packets,


output [31:0] loss_rate,

output congestion

);



assign loss_rate =
(sent_packets==0)?
0:
(dropped_packets*100)/sent_packets;



assign congestion =
(fifo_count>=6);



always @(posedge clk)
begin


if(rst)
begin

sent_packets<=0;

received_packets<=0;

dropped_packets<=0;

end


else
begin


if(packet_valid)
begin

sent_packets<=sent_packets+1;



if((sent_packets+1)%8==0)

dropped_packets<=dropped_packets+1;


else

received_packets<=received_packets+1;


end


end


end


endmodule