module ALU_tb();
  parameter n = 4;
  reg [n-1:0] a,b;
  reg [2:0] sel;
  wire [n-1:0]y;
  wire Z,N;
  ALU dut (.a(a), .b(b), .sel(sel), .y(y), .Z(Z), .N(N));
  
  initial begin 
    $display("ALU");
    $monitor("T=%0t, a=%b b=%b | sel=%b y=%b Z=%b N=%b", $time, a,b,sel,y,Z,N);
  end 
  
  initial begin 
    $dumpfile("ALU_wave.vcd");
    $dumpvars;
  end 
  
  initial begin 
   a = 4'b0101;
   b = 4'b0011;
    sel= 3'b000; #10;
    sel= 3'b001; #10;
    sel= 3'b010; #10;
    sel= 3'b011; #10;
    sel= 3'b100; #10;
    sel= 3'b101; #10;
    sel= 3'b110; #10;
    sel= 3'b111; #10;
    
    a = 4'b0101;
    b = 4'b0101;
    sel = 3'b001; #10;
    $finish;
  end 
endmodule

    
  