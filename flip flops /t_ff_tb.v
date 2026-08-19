module t_ff_tb();
  reg tf,clk;
  wire q;
  
  t_ff dut (.tf(tf), .clk(clk), .q(q));
  
  initial begin 
    $display("t_ff");
    $monitor("t=%0t tf=%b clk=%b | q=%b", $time, tf, clk, q);
  end 
  
  initial begin 
    $dumpvars;
    $dumpfile("t_ff.vcd");
  end 
  
  initial begin 
    clk=0; 
    forever # 5 clk=~clk;
    end 
  
  initial begin 
    tf=0; #10;
    tf=1; #10;
    $finish;
  end 
endmodule