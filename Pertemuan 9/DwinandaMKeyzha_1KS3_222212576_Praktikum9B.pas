program kabataku;
uses crt;
var menu, a,b : integer;
    hasil : real;

    function penjumlahan(x, y : integer):real;
    begin
        penjumlahan := x + y; 
    end;

    function pengurangan(x, y : integer):real;
    begin
        pengurangan := x - y; 
    end;

    function perkalian(x, y : integer):real;
    begin
        perkalian := x * y; 
    end;

    function pembagian(x, y : integer):real;
    begin
        pembagian := x / y; 
    end;

begin
    clrscr;
    writeln('Selamat datang di Kalkulator Sederhana');
    writeln('Silakan pilih menu berikut:');
    writeln('  1. Penjumlahan');
    writeln('  2. Pengurangan');
    writeln('  3. Perkalian');
    writeln('  4. Pembagian');
    writeln('  5. Keluar');
    write('Pilihan Anda: ');readln(menu);
    write('Inputkan nilai x: '); readln(a);
    write('Inputkan nilai y: '); readln(b);
    case menu of
        1: begin
                hasil := penjumlahan(a,b);
            end;
        2: begin
                hasil := pengurangan(a,b);
            end;
        3: begin
                hasil := perkalian(a,b);
            end;
        4: begin
                hasil := pembagian(a,b);
            end;
        5: exit
        else
        begin
            writeln ('Anda salah memasukkan input');
            exit;
        end;
    end;
    writeln('Hasil = ', hasil:4:2);
end.