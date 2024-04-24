program no2;
uses crt;
var
    i,j,n:integer;
    jumlah, deret: real;
begin
    clrscr;
    write ('Input bilangan ganjil positif: '); readln (n);
    j:=1;
    jumlah:=0;
    for i:=1 to n do
    begin
        if i = 1 then
            begin
                jumlah:=1;
                write ('1');
            end
        else if i mod 2 <> 0 then
            begin
                if j mod 2 <> 1 then
                    begin
                        jumlah:=jumlah+(1/i);
                        write (' + ', '1/',i);
                    end
                else
                    begin   
                        jumlah:= jumlah-(1/i);
                        write (' - ', '1/',i );
                    end;
            j:=j+1;
            end
    end;
    writeln (' = ', jumlah:0:2);
end.