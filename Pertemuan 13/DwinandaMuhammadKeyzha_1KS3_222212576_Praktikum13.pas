Program Praktikum_13;
uses crt;

type 
    data_mahasiswa = record 
        nim: string[10];
        nama: string;
        kelas: string[4];
        nilai_alpro: integer;
    end;
    array_mahasiswa = array[1..100] of data_mahasiswa;

var
    i, menu: byte;
    terbesar, terkecil, n, cari : integer;
    cari_nama: string;
    rerata, total : real;
    mahasiswa: array_mahasiswa;
    sistem : byte;

        procedure menu_utama;
        begin
        clrscr;
            writeln ('Selamat Datang di Program Entri Mahasiswa');
            writeln ('Silahkan pilih menu berikut : ');
            writeln;
            writeln ('1. Input Data');
            writeln ('2. Tampilkan Data');
            writeln ('3. Tampilkan Nilai Alpro Terkecil');
            writeln ('4. Tampilkan Nilai Alpro Terbesar');
            writeln ('5. Tampilkan Rata-Rata Nilai Alpro');
            writeln ('6. Cari Nilai Mahasiswa');
            writeln ('7. Urutkan Data Berdasarkan Nama');
            writeln ('8. Urutkan Data Berdasarkan Nilai Alpro');
            writeln ('9. Keluar');
            writeln;
            write ('Pilihan anda (1-9): '); readln(menu);
        end;

        procedure input_data;
        begin
            clrscr;
            writeln (' Menu Input Data');
            writeln ('=================');
            writeln;
            write('Jumlah Mahasiswa yang ingin diinput : '); readln(n);
            for i:=1 to n do
                begin
                    writeln;
                    writeln('Input data mahasiswa ke-',i);
                    with mahasiswa[i] do
                        begin
                            write('NIM         = '); readln(nim);
                            write('Nama        = '); readln(nama);
                            write('Kelas       = '); readln(kelas);
                            write('Nilai Alpro = '); readln(nilai_alpro);
                        end;
                end;
        end;

        procedure view_data(data_mahasiswa:array_mahasiswa; n:integer);
        begin
            clrscr;
            writeln (' Berikut Data yang Tersimpan');
            writeln ('=============================');
            for i:=1 to n do
                begin
                    writeln;
                    writeln('Data Mahasiswa ke-',i);
                    write('NIM         = '); writeln(mahasiswa[i].nim);
                    write('Nama        = '); writeln(mahasiswa[i].nama);
                    write('Kelas       = '); writeln(mahasiswa[i].kelas);
                    write('Nilai Alpro = '); writeln(mahasiswa[i].nilai_alpro);
                end;
            writeln;
            writeln ('Tekan Enter untuk Kembali . . .');
            readkey;
        end;

        procedure data_minimal(data_mahasiswa:array_mahasiswa; n:integer);
        begin
            clrscr;
            writeln (' Menu Tampilkan Nilai Alpro Terkecil');
            writeln ('=====================================');
            writeln;
            terkecil := mahasiswa[1].nilai_alpro;
            for i:=2 to n do
                Begin
                    If mahasiswa[i].nilai_alpro < terkecil then 
                        terkecil := mahasiswa[i].nilai_alpro;
                End;
            Writeln('Nilai Alpro Terkecil Mahasiswa = ', terkecil);
            writeln;
            writeln ('Tekan Enter untuk Kembali . . .');
            readkey;
        end;

        procedure data_maksimal(data_mahasiswa:array_mahasiswa; n:integer);
        begin
            clrscr;
            writeln (' Menu Tampilkan Data Terbesar');
            writeln ('==============================');
            writeln;
            terbesar := mahasiswa[1].nilai_alpro;
            for i:=2 to n do
                Begin
                    If mahasiswa[i].nilai_alpro > terbesar then terbesar := mahasiswa[i].nilai_alpro;
                End;
            Writeln('Nilai Alpro Terbesar Mahasiswa = ', terbesar);
            writeln;
            writeln ('Tekan Enter untuk Kembali . . .');
            readkey;
        end;

        procedure rerata_data(data_mahasiswa:array_mahasiswa; n:integer);
        begin
            clrscr;
            writeln (' Menu Tampilkan Rata-Rata Data');
            writeln ('===============================');
            writeln;
            total := 0;
            for i:=1 to n do
                begin
                    total := total + mahasiswa[i].nilai_alpro;
                end;
            rerata := total/n;
            Writeln('Rata-Rata Nilai Alpro Mahasiswa = ', rerata:0:2);
            writeln;
            readkey;
        end;

        function cari_nilai(data_mahasiswa:array_mahasiswa; n:integer; nama_dicari:string):integer;
        var
            i: integer;
        begin
            i:=1;
            while (i<n) and (lowercase(data_mahasiswa[i].nama) <> lowercase(nama_dicari)) do
                i := i + 1;
            if (lowercase(data_mahasiswa[i].nama) = lowercase(nama_dicari)) then
                cari_nilai := i
            else
                cari_nilai := 0;
        end;


        procedure cari_nilai;
        begin
            clrscr;
            writeln (' Menu Cari Nilai Mahasiswa');
            writeln ('===========================');
            writeln;
            write('Masukan nama mahasiswa = '); readln(cari_nama);
            cari := cari_nilai(mahasiswa, n, cari_nama);
            if cari = 0 then
                begin
                    writeln('Data Tidak Ditemukan!');
                end
            else 
                writeln('Data Ditemukan! Nilai Alpro ',mahasiswa[cari].nama,' = ', mahasiswa[cari].nilai_alpro);
            writeln;
            writeln ('Tekan Enter untuk Kembali . . .');
            readkey;
        end;

        procedure urut_nilai(data_mahasiswa:array_mahasiswa; n:integer);
        var
            i, j: integer;
            temp: data_mahasiswa;
        begin
            for i:=1 to n do
            begin
                for j:=1 to n do
                    if (data_mahasiswa[i].nilai_alpro > data_mahasiswa[j].nilai_alpro) then
                        begin
                            temp := data_mahasiswa[i];
                            data_mahasiswa[i] := data_mahasiswa[j];
                            data_mahasiswa[j] := temp;
                        end;
            end;
            mahasiswa := data_mahasiswa;
            Writeln('Data Telah Diurutkan Berdasarkan Nilai Alpro!');
            readkey;
        end;

        procedure urut_nama(data_mahasiswa:array_mahasiswa; n:integer);
        var
            i, j: integer;
            temp: data_mahasiswa;
        begin
            for i:=1 to n do
            begin
                for j:=1 to n do
                    if (lowercase(data_mahasiswa[i].nama) < lowercase(data_mahasiswa[j].nama)) then
                        begin
                            temp := data_mahasiswa[i];
                            data_mahasiswa[i] := data_mahasiswa[j];
                            data_mahasiswa[j] := temp;
                        end;
            end;
            mahasiswa := data_mahasiswa;
            writeln('Data Telah Diurutkan Berdasarkan Nama!');
            readkey;
        end;

begin
    sistem:=0;
    repeat
        menu_utama;
        case menu of
            1:  begin
                    input_data;
                    menu_utama;
                    repeat
                        case menu of
                            1:  begin
                                    input_data;
                                    menu_utama;
                                end;
                            2:  begin
                                    view_data(mahasiswa, n);
                                    menu_utama;
                                end;
                            3:  begin
                                    data_minimal(mahasiswa, n);
                                    menu_utama;
                                end;
                            4:  begin
                                    data_maksimal(mahasiswa, n);
                                    menu_utama;
                                end;
                            5:  begin
                                    rerata_data(mahasiswa, n);
                                    menu_utama;
                                end;
                            6:  begin
                                    cari_nilai;
                                    menu_utama;
                                end;
                            7:  begin
                                    urut_nama(mahasiswa, n);
                                    menu_utama;
                                end;
                            8:  begin
                                    urut_nilai(mahasiswa, n);
                                    menu_utama;
                                end;
                        end;
                    until menu=9;
                end;
            2..8: begin
                    writeln('ANDA HARUS MELAKUKAN INPUT DATA TERLEBIH DAHULU!');
                    Writeln;
                    readln;
                end;
        end;
    until menu=9;
end.