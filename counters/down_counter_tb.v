module down_c_tb();  
  reg reset, clk; 
  wire [3:0] q;

  down_c dut (.reset(reset), .clk(clk), .q(q));

  initial begin 
    $display("up_c");
    $monitor("t=%0t reset=%b clk=%b | q=%b", $time, reset,clk,q);
  end 
  
 initial begin 
    clk=0;
    forever #5 clk=~clk;
  end
  
  initial begin 
    $dumpvars;
    $dumpfile("down_c.vcd");
  end 
  
 initial begin
    reset = 1;
    #10;
    reset = 0;
    #200;
    $finish;
  end 
endmodule 
