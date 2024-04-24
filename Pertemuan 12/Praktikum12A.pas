program prak12A;
uses crt;
var
    hasil,n : integer;

Function Sum(x: integer):integer;
Begin
if x <=0 then
    begin
    if x = 0 then sum:=0
    else 
        Sum := x + Sum(x+1)
    end
Else 
    If x = 1 then Sum := 1
    else
        Sum := x + Sum(x-1);
    End;

begin
    Write('N : '); readln(n);
    hasil := sum(n);
    writeln(hasil);
end.