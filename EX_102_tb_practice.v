`timescale 1 ns/1 ns

module testbench;
reg	    [8:0]	a, b;
wire		out1, out2;
wire	[8:0]	out3;

EX_102_test_vector_and EX102_instance_practice (
	.a(a), .b(b), .out1(out1), .out2(out2), .out3(out3) );

initial
begin
 a  = 8'b00000000;	// Time = 0
 b  = 8'b00000000;
 #50;			// Time = 50
 a  = 8'b11111111;
 #50;			// Time = 100
 b  = 8'b11110000;
 #50;			// Time = 150
 a  = 8'b10101010;
 b  = 8'b11111111;
 
end

/*
initial
begin
  fork
    #0	 a  = 8'b00000000;	// Time = 0
    	 b  = 8'b00000000;
    #50	 a  = 8'b11111111;	// Time = 50
    #100 b  = 8'b11110000;	// Time = 100
    #150 a  = 8'b10101010;	// Time = 150
	     b  = 8'b11111111;
  join
end 
*/

endmodule
