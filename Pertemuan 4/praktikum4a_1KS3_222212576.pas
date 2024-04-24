program praktikum4a;
uses crt;
var 
    umur, lama: integer;
    gol : char;
    gaji : real;
begin
    clrscr;
    writeln ('Kategori Bonus Pegawai');
    writeln ('========================');
    writeln ('Tuliskan Golongan pegawai');
    writeln ('Ketik 1 jika Staf');
    writeln ('Ketik 2 jika Non-Staf');
    Write ('Apa golongan pegawai Anda? ');
    readln (gol);
    write ('Berapa lama Anda bekerja (Tahun)? ');
    readln (lama);
    write ('Berapa umur Anda (Tahun)? ');
    readln (umur);
    if (gol = '1') then
        if (lama >= 5) then
            if (umur>50) then
                begin
                    gaji := 1000000
                end
            else
                begin
                    gaji:= 500000
                end
        else
            begin
                gaji := 300000
            end;
    if (gol = '2') then
        if (lama>=5) and (umur>50) then
            begin  
                gaji := 400000
            end
        else
            begin
                gaji := 0
            end;
    writeln ('Anda mendapatkan bonus sebesar : Rp.', gaji:1:0)
end.

        
