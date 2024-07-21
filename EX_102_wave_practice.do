# compile

vlog EX_102_practice.v
vlog EX_102_tb_practice.v

# simulate
vsim -debugdb testbench

#probe signals
add wave -noupdate -format -literal -radix hex /testbench/EX102_instance_practice/a
add wave -noupdate -format -literal -radix hex /testbench/EX102_instance_practice/b
add wave -noupdate -format -literal -radix hex /testbench/EX102_instance_practice/out3
add wave -noupdate -format -logic	       /testbench/EX102_instance_practice/out1
add wave -noupdate -format -logic	       /testbench/EX102_instance_practice/out2

# 200 ns
run 200
