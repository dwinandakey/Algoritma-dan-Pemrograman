program penugasan2b;
uses crt;
var
    x,m,z : real;
    data,n : integer;
begin
    writeln ('NILAI TABEL DARI DISTRIBUSI NORMAL');
    writeln ('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
    write ('Nilai rata-rata masing-masing (x) ='); readln (x);
    write ('Nilai rata-rata keseluruhan (m) ='); readln (m);
    write ('Data ke-x ='); readln(data);
    write ('Jumlah data (n) ='); readln (n);

    z := (x-m)/sqrt(sqr(data-x)/(n-1));
    writeln ('Nilai Tabel =', z:0:2);
end.

