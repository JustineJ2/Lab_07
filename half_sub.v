module adder(
    input A,B,// Declare your A/B inputs
    output Y, // Declare Y output
    output Carry // Declare Borrow output
);

    assign Y = (A ^ B);// Enter logic equation here
    assign Carry = (Y & B & ~A);
endmodule