program pengulangan;
uses crt;
var
    i,n,j,k : integer;
begin
    clrscr;
    readln (n);
    for i:=1 to n do
        for j:=1 to i do
            begin
            for k:=1 to j do
            write (k, ' ');
            writeln; 
            end;
end.