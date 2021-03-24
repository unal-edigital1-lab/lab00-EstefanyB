module sum1bcc (A, B, Ci,Cout,S);
	//Declara entradas y salidas
  input  A;
  input  B;
  input  Ci;
  output Cout;
  output S;

  reg [1:0] st; //st es un arreglo de dos bits que almacena información
  assign S = st[0]; // se le asgina la posición 0 de st
  assign Cout = st[1]; // se le asgina la posición 1 de st

  always @ ( * ) begin
  	st  = 	A+B+Ci;
  end
  
endmodule

