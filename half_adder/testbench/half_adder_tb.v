//testbench for the half adder
`timescale 1ns/1ns
`include "half_adder.v"
/*
* every verilog file must have a corresponding tb.v file
* at the top we must start with our timscale and include our corresponding .v file
* 
*/
module half_adder_tb;
//must create register for our inputs and wires for all outputs
reg a, b;
wire b1, b2;

half_adder uut(b1, b2, a, b);

initial begin
    //this is the file that will hold out output waveform; note .vcd is the file extension
    $dumpfile("half_adder_tb.vcd");
    $dumpvars(0, half_adder_tb);
    //set A to 0 and wait 20 seconds, then set A to 1 and wait twenty seconds
    //we want to wait after changing so we can view the waveform, if everything changes all at once
    //it isn't helpful and we can't observe changes
    $display("Starting test:\n");
    a = 0;
    b = 0;
    $display("a = %b, b = %b, sum = %b%b\n", a, b, b1, b2);
    #20
    a = 1;
    b = 0;
    $display("a = %b, b = %b, sum = %b%b\n", a, b, b1, b2);
    #20
    a = 0;
    b = 1;
    $display("a = %b, b = %b, sum = %b%b\n", a, b, b1, b2);
    #20
    a = 1;
    b = 1;
    $display("a = %b, b = %b, sum = %b%b\n", a, b, b1, b2);
    #20

    $display("Done!");
    $finish;

end

endmodule

//to run verilog type the following in the command line:
//iverilog -o half_adder.vvp half_adder_tb.v
// then type: vvp half_adder_tb.vvp to actualy run the simulation
// to view waveform:
// gtkwave 