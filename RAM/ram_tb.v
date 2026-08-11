`timescale 1ns/1ps

module ram_tb;

reg clk, we;
reg [1:0] addr;
reg [3:0] din;
wire [3:0] dout;

// Instantiate RAM
ram uut (
.clk(clk),
.we(we),
.addr(addr),
.din(din),
.dout(dout)
);

// Clock generation
always #5 clk = ~clk;

initial begin
$monitor("Time=%0t | we=%b | addr=%b | din=%b | dout=%b",
$time, we, addr, din, dout);

```
clk = 0;

// Write data
we=1; addr=2'b00; din=4'b1010; #10;
we=1; addr=2'b01; din=4'b1100; #10;
we=1; addr=2'b10; din=4'b1111; #10;
we=1; addr=2'b11; din=4'b0001; #10;

// Read data
we=0; addr=2'b00; #10;
we=0; addr=2'b01; #10;
we=0; addr=2'b10; #10;
we=0; addr=2'b11; #10;

$finish;
```

end

endmodule
