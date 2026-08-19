module reg_8bit_tb();
  reg [7:0] d;
  reg clk, reset, enable;
  wire q;
  
 reg_8bit dut(d, clk, reset, enable, q);
  
  initial begin 
    $display("reg_8bit");
    $monitor("t=0%t, d=%b clk=%b reset=%b enable=%b | q=%b", $time, d,clk,reset, enable, q);
  end 
  
  initial begin 
    $dumpvars;
    $dumpfile("reg_8bit.vcd");
  end 
  
  initial begin 
    clk=0;
    forever #5 clk=~clk;
  end 
  initial begin 
    reset=1; enable=0; d=8'b00000000;#10;
    reset=1; enable=0;d=8'b00101000;#10;  
    reset=0; enable=1;d=8'b00001011;#10;
    reset=0; enable=1;d=8'b00001111;#10;
    $finish;
  end 
endmodule 