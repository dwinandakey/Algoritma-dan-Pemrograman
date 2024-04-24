program No3;
uses crt;
var
    menu, i, j, k, n, r: integer;          
    hasil: real;             

        function faktorial(j: integer):longint;
        begin
            k := 1;
            for i := j downto 1 do
                k := i * k;
        end;
        
        function permutasi(x, y: integer):real;
        begin
            hasil := faktorial(x) / faktorial((x-y));
        end;

        function kombinasi(x,y: integer):real;
        begin
            hasil := permutasi(x,y) / faktorial(y);
        end;

begin
    clrscr;
    writeln('Kalkulator Faktorial');
    writeln('1. Faktorial');
    writeln('2. Permutasi');
    writeln('3. Kombinasi');
    writeln('4. Keluar dari program');
    write('Masukkan pilihan anda:');
    readln(menu);
    case menu of
        1:
        begin
            writeln('Masukkan angka yang ingin difaktorialkan: ');
            readln(n);
            faktorial(n);
            writeln('Hasil dari ', n, '! adalah:', k);
        end;
    
        2:
        begin
            write('Masukkan nilai n untuk P(n,r):');
            readln(n);
            write('Masukkan nilai r untuk P(n,r):');
            readln(r);
            permutasi(n, r);
            writeln('Hasil Permutasi ', n, 'P', r, ':', hasil:0:2);
        end;
        
        3:
        begin
            write('Masukkan nilai n untuk C(n,r):');
            readln(n);
            write('Masukkan nilai r untuk C(n,r):');
            readln(r);
            kombinasi(n, r);
            writeln('Hasil Kombinasi ', n, 'C', r, ':', hasil:0:2);
        end;

        4:
            exit;
        else
        begin
            write ('Anda salah memasukkan pilihan');
            exit;
        end;
   end;
end.