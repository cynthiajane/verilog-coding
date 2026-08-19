module jk_ff_tb();
  reg j,k,clk;
  wire q;
  
  jk_ff dut (.j(j), .k(k), .clk(clk), .q(q));
  
  initial begin 
    $display("jk_ff");
    $monitor("t=%0t j=%b k=%b clk=%b | q=%b", $time, j,k,clk,q);
    end 
  initial begin 
    $dumpvars;
    $dumpfile("jk_ff.vcd");
  end 
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial begin 
    j=0; k=0; #10;
    j=0; k=0; #10;
    j=0; k=1; #10;
    j=1; k=0; #10;
    j=0; k=0; #10;
    j=1; k=1; #10;
    $finish;
  end 
endmodule 
             
             
  