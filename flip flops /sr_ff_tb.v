module sr_ff_tb();
  reg s,r,clk;
  wire q;
  
  sr_ff dut (.s(s), .r(r), .clk(clk), .q(q));
  
  initial begin 
    $display("sr_ff");
    $monitor("t=0%t, s=%b r=%b clk=%b | q=%b", $time, s,r,clk,q);
  end
  
  initial begin 
    $dumpvars;
    $dumpfile("sr_ff.vcd");
  end
  
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
end
  
  initial begin 
    s=0; r=1; #10;
    s=0; r=0; #10;
    s=1; r=0; #10;
    s=0; r=0; #10;
    s=1; r=1; #10;
    $finish;
  end
endmodule
