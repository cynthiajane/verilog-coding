module d_ff_tb();
  reg d,clk;
  wire q;
  
  d_ff dut (.d(d), .clk(clk), .q(q));
  
  initial begin 
    $display("d_ff");
    $monitor("t=0%t, d=%b clk=%b | q=%b", $time, d,clk,q);
  end
  
  initial begin 
    $dumpvars;
    $dumpfile("d_ff.vcd");
  end
  
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
end
  
  initial begin 
    d=0; #10;
    d=1; #10;
    d=0; #10;
    d=1; #10;
    $finish;
  end
endmodule
