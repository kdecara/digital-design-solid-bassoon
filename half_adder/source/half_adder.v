module half_adder(b1, b2, a, b);
    input a, b;
    output b1, b2;
    reg b1, b2;
    /*
    assign b1 = a ^ b;
    assign b2 = a & b;
    */
    always @(a or b) begin
        b1 = a ^ b;
        b2 = a & b;
    end
endmodule