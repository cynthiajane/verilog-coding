module reg_8bit(d,clk,reset, enable, q);
  input [7:0] d;
  input clk;
  input reset;
  input enable;
  output reg [7:0] q;
  always@(posedge clk)
    begin 
      if (reset)
        q<=8'b00000000;
      else if (enable)
        q<=d;
      else 
        q<=q;
    end
endmodule
