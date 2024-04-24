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
    if y = 1 then 
        perkalian :=x
    else
        perkalian := x + perkalian (x, y-1);
    end;

    function pembagian(x, y : integer):real;
    begin
        pembagian := x / y; 
    end;
    
    Function Faktorial(x:integer):integer;
    Begin
    If x = 1 then 
        faktorial := 1
    Else 
        faktorial := x * Faktorial(x - 1);
    End;

begin
    clrscr;
    repeat
        writeln('Selamat datang di Kalkulator Sederhana');
        writeln('Silakan pilih menu berikut:');
        writeln('  1. Penjumlahan');
        writeln('  2. Pengurangan');
        writeln('  3. Perkalian');
        writeln('  4. Pembagian');
        writeln('  5. Faktorial');
        writeln('  6. Keluar');
        write('Pilihan Anda: ');readln(menu);
        case menu of
            1: begin
                    write('Inputkan nilai x: '); readln(a);
                    write('Inputkan nilai y: '); readln(b);
                    hasil := penjumlahan(a,b);
                end;
            2: begin
                    write('Inputkan nilai x: '); readln(a);
                    write('Inputkan nilai y: '); readln(b);
                    hasil := pengurangan(a,b);
                end;
            3: begin
                    write('Inputkan nilai x: '); readln(a);
                    write('Inputkan nilai y: '); readln(b);
                    hasil := perkalian(a,b);
                end;
            4: begin
                    write('Inputkan nilai x: '); readln(a);
                    write('Inputkan nilai y: '); readln(b);
                    hasil := pembagian(a,b);
                end;
            5: begin
                    write('Inputkan nilai x: '); readln(a);
                    hasil := faktorial(a);
                end;
            6: exit
            else
            begin
                writeln ('Anda salah memasukkan input');
                exit;
            end;
        end;
        writeln('Hasil = ', hasil:4:2);
        readln;
    until menu=6;

end.