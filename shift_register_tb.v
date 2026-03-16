module shift_register_tb;

reg clk;
reg rst;
reg din;
wire [3:0] q;

shift_register uut(
.clk(clk),
.rst(rst),
.din(din),
.q(q)
);

always #5 clk = ~clk;

initial
begin
clk = 0;
rst = 1;
din = 0;

#10 rst = 0;
din = 1;

#50 $stop;
end

endmodule
