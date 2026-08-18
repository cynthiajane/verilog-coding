module ALU #(parameter n=4)
  (
    input [n-1:0] a,b,
    input [2:0] sel,
    output reg [n-1:0]y,
    output reg Z,
    output reg N
  );
  always @(*) begin 
    case(sel)
       3'b000: y= a+b;
       3'b001: y = a-b;
       3'b010: y = a&b;
       3'b011: y = a|b;
       3'b100: y = a^b;
       3'b101: y = ~a;
       3'b110: y = a>b;
      3'b111: y = {n{1'b0}};
      default: y= {n{1'b0}};
    endcase 
    
    if (y==0)
      Z=1;
    else 
      Z=0;
    N=y[n-1];
  end 
endmodule
