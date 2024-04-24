Program p11_no3;
uses crt;
var
    n:integer;
    ulang:char;

    procedure biner(x:integer);
    begin
        if ((x mod 2 = 0) and (x <> 0)) then
            begin
                biner(x div 2);
                write ('0');
            end
        else if (x <> 0) then
            begin
                biner(x div 2);
                write ('1');
            end;
    end;

begin
    clrscr;
    repeat
        writeln('Selamat Datang di aplikasi konversi desimal ke biner');
        Write('Masukkan bilangan bulat n : '); readln(n);
        write('Hasil konversi ke biner : '); biner(n);
        writeln;
        write('Apakah anda ingin melakukan konversi lagi? (T/t)'); readln(ulang);
    until (ulang = 'T') or (ulang = 't');
    Writeln ('Terima kasih');
end.

