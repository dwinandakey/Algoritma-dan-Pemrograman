program nilai_tabel_dari_distribusi_normal;
uses crt;
var
    x: array[1..100] of integer;
    n,i: integer;
    rata, jml, std, sigmasqr,m,z: real;
begin
    clrscr;
    writeln ('Nilai tabel dari distribusi normal');
    writeln ('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
    write ('Masukkan jumlah bilangan =');
    readln (n);
for i:=1 to n do
    begin
        write ('Bilangan ke-',i, ':');
        readln (x[i]);
        jml:=jml+x[i];
    end;
        rata:=jml/n;
        writeln ('Rata-rata (rata) =', rata:0:2);
        write ('Rata-rata keseluruhan =');
        readln (m);
 for i:=1 to n do
    begin
        sigmasqr:= sigmasqr + sqr(x[i]-rata);
    end;
        z:= (rata-m)/sqrt(sigmasqr/(n-1));
        writeln ('Nilai table =', z:0:2);
    readkey;
end.
