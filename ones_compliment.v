module ones_compliment(
    input [3:0] A,B,Cin,
    output [3:0] Y, 
    output Cout
);
    wire[7:0] Cout;
    wire [4:0] y; 
     
     full_adder real_zero_inst(
        .A(A[0]),
        .B(B[0]),
        .Cin(1'b0),
        .Cout(Cout[1]),
        .Y(y[0])
     );
     
    full_adder nonreal_zero_inst(
        .A(A[1]),
        .B(B[1]),
        .Cin(Cout[1]),
        .Cout(Cout[2]),
        .Y(y[1])
     );
     
     full_adder one_inst(
        .A(A[2]),
        .B(B[2]),
        .Cin(Cout[2]),
        .Cout(Cout[3]),
        .Y(y[2])
     );
     
    full_adder two_inst(
        .A(A[3]),
        .B(B[3]),
        .Cin(Cout[3]),
        .Cout(Cout[4]),
        .Y(y[3])
     );
     full_adder three_inst(
        .A(y[0]),
        .B(B[1'b0]),
        .Cin(Cout[4]),
        .Cout(Cout[5]),
        .Y(Y[0])
      
     );
     full_adder four_inst(
        .A(y[1]),
        .B(B[1'b0]),
        .Cin(Cout[5]),
        .Cout(Cout[6]),
        .Y(Y[1])
     );
     full_adder five_inst(
        .A(y[2]),
        .B(B[1'b0]),
        .Cin(Cout[6]),
        .Cout(Cout[7]),
        .Y(Y[2])
    
     );
     full_adder six_inst(
        .A(y[3]),
        .B(B[1'b0]),
        .Cin(Cout[7]),
        .Y(Y[3])
     

     );
     
    
     
     
endmodule