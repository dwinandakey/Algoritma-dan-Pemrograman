program penugasan2a;
uses crt;
var
    x,n : integer;
    rata,sd : real;
begin
    clrscr;
    writeln ('Mencari Standar Deviasi n (SD)');
    writeln ('===============================');
    write ('Data ke x (data) ='); readln (x);
    write ('Rata - Rata (rata)='); readln (rata);
    write ('Jumlah data ='); readln (n);
    sd := sqrt(sqr(x-rata)/(n-1));
    writeln ('Standar Deviasi =', sd:0:2);
end.
