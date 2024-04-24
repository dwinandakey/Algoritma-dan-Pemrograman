program no5;
uses crt;
var
    n,i,j:integer;
begin
    clrscr;
    write ('Masukkan N: '); readln(n);
    for i:=1 to n do
    begin
        for j:=1 to n-1 do
        begin
            writeln (i, ' ', j);
        end
    end;
end.