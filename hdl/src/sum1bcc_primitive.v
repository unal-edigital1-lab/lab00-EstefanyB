module sum1bcc_primitive (A, B, Ci,Cout,S);

  input  A;
  input  B;
  input  Ci;
  output Cout;
  output S;


  wire a_ab; //Son como cables
  wire x_ab;
  wire cout_t;

  and(a_ab,A,B); // Primero está el de salida, luego los de entrada. Lógica computacional
  xor(x_ab,A,B);

  xor(S,x_ab,Ci);
  and(cout_t,x_ab,Ci);

  or (Cout,cout_t,a_ab);
endmodule

