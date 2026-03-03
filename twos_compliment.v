module twos_compliment(
    input [7:0] A,B,Cin,
    output [7:0] Y,
    output Cout
);
    wire [7:0] out;
    assign A = ~A;
     full_adder real_zero_inst(
       .A(A[0]),
       .B(1'b1),
       .Y(Y[0]),
       .Cout(out[0]),
       .Cin(1'b0)
     );
     
    full_adder nonreal_zero_inst(
        .A(A[1]),
        .B(B[1'b0]),
        .Y(Y[1]),
        .Cout(out[1]),
        .Cin(out[0])
     );
     
     full_adder one_inst(
        .A(A[2]),
        .B(B[1'b0]),
        .Y(Y[2]),
        .Cout(out[2]),
        .Cin(out[1])
     );
     
    full_adder two_inst(
       .A(A[3]),
       .B(B[1'b0]),
       .Y(Y[3]),
       .Cout(out[3]),
       .Cin(out[2])
     );
     
     full_adder three_inst(
       .A(A[4]),
       .B(B[1'b0]),
       .Y(Y[4]),
       .Cout(out[4]),
       .Cin(out[3])
      
     );
     
     full_adder four_inst(
       .A(A[5]),
       .B(B[1'b0]),
       .Y(Y[5]),
       .Cout(out[5]),
       .Cin(out[4])
        
     );
     
     full_adder five_inst(
        .A(A[6]),
        .B(B[1'b0]),
        .Y(Y[6]),
        .Cout(out[6]),
        .Cin(out[5])
     );
     
     full_adder six_inst(
        .A(A[7]),
        .B(B[1'b0]),
        .Y(Y[7]),
        .Cout(out[7]),
        .Cin(out[6])

     );
     

endmodule
