Program prak12C;
uses crt;
var
    baris: integer;
    kalimat: string;

        PROCEDURE TULIS_1(banyak : integer; kata : string);
        begin
        writeln(kata, banyak);
        if banyak > 1 then 
            TULIS_1(banyak-1,kata);
        end; 

begin
    clrscr;
    writeln ('Masukkan banyak baris :'); readln(baris);
    writeln ('Masukkan kalimatnya :'); readln(Kalimat);
    writeln;
    TULIS_1(baris, kalimat);
end.
