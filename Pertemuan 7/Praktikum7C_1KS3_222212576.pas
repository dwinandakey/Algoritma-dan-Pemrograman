program no3;
uses crt;
var
    n, i, bilangan, jumlah: integer;
begin 
    clrscr;
    write ('Masukkan jumlah bilangan N: '); readln (n);
    for i:=1 to n do
    begin
        write ('Masukkan bilangan ke-',i,':');
        readln (bilangan);
        if bilangan mod 2 = 0 then
            jumlah:= jumlah + bilangan
        else continue;
    end;
    writeln ('Jumlah bilangan genap = ', jumlah);
end.

