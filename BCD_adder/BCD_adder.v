module BCD_adder(Cin,X,Y,Cout,S);
input Cin;
input [3:0]X,Y;
output reg Cout;
output reg [3:0]S;

reg [4:0]Z;

always@(*)
begin
Z=X+Y+Cin;
if (Z<10)
{Cout,S}=Z;
else 
{Cout,S}=Z+6;
end 
endmodule
