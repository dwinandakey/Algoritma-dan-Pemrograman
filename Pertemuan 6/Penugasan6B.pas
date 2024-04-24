Program Bilangan_Bulat_N;
uses crt;
var
    n, i, j: integer;
begin
    clrscr;
    write ('Masukkan N : '); Readln (n);
    for i:=1 to n do
        begin
        for j:=1 to i do
            write ('*');
        writeln;
        end;
end.


