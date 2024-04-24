program no4;
uses crt;
var
    jumlah, jumlah17, jumlah18, jumlah19, jumlah20, jumlahlain, usia, i: integer;
begin
    clrscr;
    write ('Masukkan jumlah mahasiswa : '); readln (jumlah);
    jumlah17:=0;
    jumlah18:=0;
    jumlah19:=0;
    jumlah20:=0;
    for i:=1 to jumlah do
    begin
        write ('Masukkan usia mahasiswa ke-', i,': '); 
        readln (usia);
        case usia of
            17: jumlah17 := jumlah17+1;
            18: jumlah18 := jumlah18+1;
            19: jumlah19 := jumlah19+1;
            20: jumlah20 := jumlah20+1;
        else
            jumlahlain := jumlahlain+1;
        end
    end;
        writeln ('Jumlah mahasiswa berusia 17 tahun = ', jumlah17);
        writeln ('Jumlah mahasiswa berusia 18 tahun = ', jumlah18);
        writeln ('Jumlah mahasiswa berusia 19 tahun = ', jumlah19);
        writeln ('Jumlah mahasiswa berusia 20 tahun = ', jumlah20);
        writeln ('Jumlah mahasiswa berusia selain itu = ', jumlahlain);
end.

