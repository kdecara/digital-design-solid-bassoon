/*
* design block for converting from binary to gray
*/
module binary_gray(G_3, G_2, G_1, G_0, B_0, B_1, B_2, B_3);
    output G_3, G_2, G_1, G_0;
    input B_0, B_1, B_2, B_3;
    assign G_3 = B_3;
    assign G_2 = B_3 ^ B_2;
    assign G_1 = B_2 ^ B_1;
    assign G_0 = B_2 ^ B_0;
endmodule

/*
module my_xor(a, b, f);
    assign f = a ^ b;
endmodule*/