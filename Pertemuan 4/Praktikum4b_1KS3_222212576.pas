Program praktikum4b;
uses crt;
label akhir;
var 
    Jumlah, Langka, NonLangka, Hari, kelompok: integer;
    dendatotal : real;
begin
    clrscr;
    writeln ('Denda peminjaman buku di perpustakaan kampus');
    writeln ('================================================');
    writeln ('Tuliskan kelompok buku yang dipinjam');
    writeln ('Ketik 1 jika kelompok buku langka');
    writeln ('Ketik 2 jika kelompok buku non-langka');
    write ('Apa kelompok buku pinjaman Anda? '); readln (kelompok);
    write ('Berapa hari Anda meminjam buku? '); readln (Hari);
    If (Kelompok = 1) then
        begin
        write ('Berapa banyak peminjaman buku langka? '); readln (Langka);
        if (Langka<=3) then
            begin
            if (Hari > 3) then
                begin
                    dendatotal := (hari-3)*1000*langka;
                if (Hari > 7) then
                    begin
                        dendatotal := Langka*((hari-7)*2500+(hari-3)*1000);
                    if (hari > 10) then
                        begin
                            dendatotal := Langka*((hari-10)*5000+(hari-7)*2500+(hari-3)*1000);
                        end
                    end
                end
            end
        else
            begin
                writeln ('Anda telah melampaui peminjaman batas banyak buku');
                exit;
            end;
        end
    else if (Kelompok = 2) then
        begin
            write ('Berapa peminjaman buku non-langka? '); readln (NonLangka);
        if (NonLangka<=3) then
            begin
            if (Hari > 7) then
                begin
                    dendatotal := NonLangka*(hari-7)*500;
                end
            end
        else
        begin
            writeln ('Anda telah melampaui peminjaman batas banyak buku');
            exit;
        end;
    end
    else
    begin
        writeln ('Jenis buku yang anda input salah');
        exit;
        end;
    writeln ('denda yang dikenakan : Rp. ', dendatotal:0:0);
end.


    
