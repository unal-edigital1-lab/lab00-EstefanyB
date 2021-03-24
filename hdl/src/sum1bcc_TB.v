module sum1bcc_TB;

  reg x; //reg son arreglos de almacenamiento
  reg y; // wire son cables de conexión
  reg c;
  wire out;
  wire z;


sum1bcc uut(x, y, c,out,z); //Instanciar


initial begin
x=0; y=0; c=0; #3; // #3: indica tiempo de espera en ciclos
x=0; y=0; c=1; #3;
x=0; y=1; c=0; #3;
x=0; y=1; c=1; #3;
x=1; y=0; c=0; #3;
x=1; y=0; c=1; #3;
x=1; y=1; c=0; #3;
x=1; y=1; c=1; #3;



end

initial begin: TEST_CASE
     $dumpfile("sum1bcc_TB.vcd");
     $dumpvars(-1, uut);
     #(200) $finish; //Tiempo de finalización
   end

endmodule //
