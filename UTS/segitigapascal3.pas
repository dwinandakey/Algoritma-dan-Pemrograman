program pascalTriangle;
uses crt;
var
    i, j, n, k, t: integer;
begin
    clrscr;
    write ('Masukkan jumlah n : ');
    readln (n);
    for i := 0 to n-1 do 
    begin
        k:=1;
        for j := 0 to n-i do
        write('':2);
        for t := 0 to i do 
        begin
            write(k:2, '':2);
            k:=k*(i-t) div (t+1);
        end;
        writeln;
    end;
end.