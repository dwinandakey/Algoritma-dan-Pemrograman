Program no6;
uses crt;
var
    n, i, j, k: integer;
begin
    clrscr;
    write ('Masukkan N : '); Readln (n);
    k:=1;
    for i:=n downto 1 do
        begin
        for j:=1 to i do
            write (k, ' ');
            k := k+1;
        writeln;
        end;
end.