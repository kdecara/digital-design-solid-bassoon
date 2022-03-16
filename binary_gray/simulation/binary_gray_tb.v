// testbench for binary_gray
`timescale 1ns/1ns
`include "binary_gray.v"
/*
* every verilog file must have a corresponding tb.v file
* at the top we must start with our timscale and include our corresponding .v file
* 
*/
module binary_gray_tb;
//must creat register for our inputs and wires for all outputs
wire F;
reg B_0, B_1, B_2, B_3;
wire G_3, G_2, G_1, G_0;

binary_gray uut(G_3, G_2, G_1, G_0, B_0, B_1, B_2, B_3);

initial begin
    //this is the file that will hold out output waveform; note .vcd is the file extension
    $dumpfile("binary_gray_tb.vcd");
    $dumpvars(0, binary_gray_tb);
    //set A to 0 and wait 20 seconds, then set A to 1 and wait twenty seconds
    //we want to wait after changing so we can view the waveform, if everything changes all at once
    //it isn't helpful and we can't observe changes
    B_0 = 0;
    B_1 = 1;
    B_2 = 0;
    B_3 = 1;
    #20
    $display("Test complete, variables:");
    $display("G_3 = %d", G_3);
    $display("G_2 = %d", G_2);
    $display("G_1 = %d", G_1);
    $display("G_0 = %d", G_0);


end

endmodule