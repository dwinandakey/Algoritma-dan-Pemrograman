Program belajar_fungsi;

    Function pangkat2(a:integer):integer;
    begin
        pangkat2:=a*a
    end;

var 
    n:key;
    hasil:integer;
 
begin
    write('N= '); readln(n);
    hasil:=pangkat2(n);
    writeln ('hasil = ', hasil);
    readln;
end.

    