module d_ff_sync_tb();

  reg d, clk, reset;
  wire q;

  d_ff_sync dut (.d(d), .clk(clk), .reset(reset), .q(q));

  initial begin
    $display("D FF with Synchronous Reset");
    $monitor("t=%0t | d=%b clk=%b reset=%b | q=%b",
             $time, d, clk, reset, q);
  end

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  initial begin
    $dumpfile("d_ff_sync.vcd");
    $dumpvars;
  end
  initial begin
    reset=1; d=0; #10;
    reset=1; d=1; #10;
    reset=0; d=0; #10;
    reset=0; d=1; #10;
    reset=1; d=1; #10;
    $finish;
  end

endmodule