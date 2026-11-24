module encoder(d0,d1,d2,d3,q0,q1);
  input d0,d1,d2,d3;
  output reg q0,q1;
  always @(*) 
    begin 
      if (d3) begin 
        q1= 1;
        q0=1;
      end 
      else if (d2) begin 
        q1=1;
        q0=0;
      end 
      else if (d1) begin 
        q1=0;
        q0=1;
      end 
      else begin 
        q1=0;
        q0=0;
      end 
    end 
endmodule 