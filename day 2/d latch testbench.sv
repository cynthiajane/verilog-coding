module d_latch_tb();
  reg d,en;
  wire q;
  
  d_latch dut(.d(d), .en(en), .q(q));
  
  initial begin 
    $display("d_latch");
    $monitor("t=0%t d=%b en=%b | q=%b", $time,d,en,q);
  end 
  
  initial begin 
    $dumpfile("d_latch.vcd");
    $dumpvars;
  end 
  
  initial begin 
    d=0; en=0; #10;
    d=1; en=1; #10;
    d=0; en=0; #10;
    d=0; en=1; #10;
    d=0; en=0; #10;
    $finish;
  end 
endmodule