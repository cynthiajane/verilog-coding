module t_ff(tf,clk,q);
  input tf,clk;
  output reg q;
   initial
        q = 0;
  always@(posedge clk)
    begin 
      if (tf==0)
        q<=q;
      else q<=~q;
    end
endmodule 
