`timescale 1 ns/1 ns

module EX_102_test_vector_and(a, b, out1, out2, out3);
input	[8:0]	a, b;
output		out1, out2;
output	[8:0]	out3;

wire		out1, out2;
wire	[8:0]	out3;


assign	out1 = ~&a;

assign	out2 = ~&b;

assign  out3 = ~( a & b );

endmodule
