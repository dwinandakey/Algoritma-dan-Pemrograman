program no11E;
uses crt;
// type 
    //  masuk = record 
        //  tgl : 1..31; 
        //  bln : 1..12; 
        //  thn : integer; 
//  end; 
    //  alamat = record 
        //  jalan : string[20]; 
        //  kota : string[10]; 
//  end; 
//    nilaipeg = record 
//       pokok,tunjangan,lembur : real; 
//  end; 
//  pegawai = record 
//      nama : string[20]; 
//      tglmasuk : masuk; 
//      almt : alamat; 
//      nilai : nilaipeg; 
//  end; 
// var 
//  datapegawai : array [1..10] of pegawai;
//  i : pegawai;
type 
 pegawai = record 
    nama: string[20]; 
    tglmasuk: record 
        tgl : 1..31; 
        bln : 1..12; 
        thn : integer; 
    end; 
    alamat : record 
        jalan : string[20]; 
        kota : string[10]; 
    end; 
    nilaipeg : record 
        pokok,tunjangan,lembur : real; 
    end; 
 end; 
var 
    datapegawai : array [1..100] of pegawai; 
    i,n : integer;
begin
    clrscr; 
    for i:= 50 downto 49 do 
    begin 
        writeln('Input pegawai ke-', i); 
    with datapegawai[i] do 
        begin 
            write('Nama Pegawai : '); readln(nama);  
            writeln('Mulai Masuk'); 
            write('Tanggal: '); readln(tglmasuk.tgl);
            Write('Bulan: '); readln(tglmasuk.bln);
            write('Tahun: '); readln(tglmasuk.thn);
            writeln('Alamat'); 
            Write('Jalan: ');readln(alamat.jalan);
            Write('Kota: ');readln(alamat.kota);
            Writeln('Nilai Pegawai');
            write('Nilai Pokok: '); readln(nilaipeg.pokok);
            Write('Tunjangan: '); readln(nilaipeg.tunjangan);
            write('Lembur: ');readln(nilaipeg.lembur);
        end; 
    end;
    Datapegawai[50].nilaipeg.pokok := 5000000;
    Datapegawai[50].alamat.kota := 'Bekasi'; 
    Write('Cek data pegawai ke-');readln(n);
    with datapegawai[n] do 
        begin
            writeln('Nama Pegawai ke-', n, ':', nama);
            writeln('Mulai Masuk Pegawai ke-', n, ':', Tglmasuk.tgl, '/', tglmasuk.bln, '/', tglmasuk.thn);
            writeln('Alamat Pegawai ke-',n, ':', alamat.jalan, ' ', alamat.kota);
            writeln('Nilai Pokok Pegawai ke-',n, ':', nilaipeg.pokok:0:0);
            writeln('Nilai Tunjangan Pegawai ke-',n, ':', nilaipeg.tunjangan:0:0);
            writeln('Nilai Lembur Pegawai ke-',n, ':', nilaipeg.lembur:0:0);
        end;
end.
