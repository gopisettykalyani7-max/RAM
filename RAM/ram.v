module ram (
input clk,
input we,              // write enable
input [1:0] addr,      // address
input [3:0] din,       // data input
output reg [3:0] dout  // data output
);

reg [3:0] mem [0:3];      // memory array

always @(posedge clk) begin
if (we)
mem[addr] <= din; // write operation
dout <= mem[addr];    // read operation
end

endmodule
