module ALU4b8f(A,B,S,Y);
input [3:0]A,B;
input [2:0]S;
output reg [3:0]Y;

always@*
begin
case(S)
3'b000:Y=A&B;
3'b001:Y=~(A&B);
3'b010:Y=A|B;
3'b011:Y=~(A|B);
3'b100:Y=A^B;
3'b101:Y=~(A^B);
3'b110:Y=A+B;
3'b111:Y=A-B;
endcase
end
endmodule
