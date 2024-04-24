program standardeviasi;
uses crt;
var
    x: array[1..100] of integer;
    n,i: integer;
    rata, jml, std, sigmasqr: real;
begin
    clrscr;
    writeln ('Menghitung Standar Deviasi (SD)');
    writeln ('===========================');
    write ('Masukkan Jumlah Bilangan =');
    readln (n);
for i:=1 to n do
    begin
        write ('Bilangan ke-',i, ':');
        readln (x[i]);
        jml:=jml+x[i]
    end;
        rata:=jml/n;
        writeln ('Total Bilangan =', jml:0:2);
        writeln ('Rata-rata (rata) =', rata:0:2);
 for i:=1 to n do
    begin
        sigmasqr:= sigmasqr + sqr(x[i]-rata);
    end;
        writeln ('Varians = ',sigmasqr/(n-1):0:2);
        writeln ('Standar deviasi = ',sqrt(sigmasqr/(n-1)):0:2);
    readkey;
end.