module encoder_tb();
  reg d0,d1,d2,d3;
  wire q0,q1;
  encoder dut (.d0(d0), .d1(d1), .d2(d2), .d3(d3), .q0(q0), .q1(q1));
  
  initial begin 
    $display("encoder");
    $monitor("T=%0t, d0=%b d1=%b d2=%b d3=%b | q0=%b q1=%b", $time, d0,d1,d2,d3,q0,q1);
  end 
  
  initial begin 
    $dumpfile("encoder_wave.vcd");
    $dumpvars;
  end 
  
  initial begin 
    d0=1; d1=0; d2=0; d3=0; #10;  
    d0=0; d1=1; d2=0; d3=0; #10;  
    d0=0; d1=0; d2=1; d3=0; #10;  
    d0=0; d1=0; d2=0; d3=1; #10; 
    d0=1; d1=1; d2=0; d3=0; #10; 
    d0=1; d1=0; d2=1; d3=0; #10; 
    $finish;
  end 
endmodule 
