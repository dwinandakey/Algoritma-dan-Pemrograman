Program JadwalMataKuliah;
uses crt;
var
    Hari : String;
begin
    clrscr;
    writeln ('Jadwal Mata Kuliah');
    writeln ('=====================');
    write ('Masukkan Hari Kuliah : '); readln (Hari);
    Case lowercase(Hari) of
        'senin' : writeln ('Mata kuliah yang diberikan adalah Algoritma dan Pemrograman');
        'selasa' : writeln ('Mata kuliah yang diberikan adalah Kalkukus');
        'rabu' : writeln ('Mata kuliah yang diberikan adalah Bahasa Indonesia');
        'kamis' : writeln ('Mata kuliah yang diberikan adalah Pengantar Teknik Informasi');
        'jumat' : writeln ('Mata kuliah yang diberikan adalah Bahasa Inggris');
        'sabtu' : writeln ('Mata kuliah yang diberikan adalah Basis Data');
    else
     exit;
    end;
end.