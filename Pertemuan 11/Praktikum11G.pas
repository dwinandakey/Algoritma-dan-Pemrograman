program p11_no2;
uses crt;
// type
var
    a,b,c,adj : array [1..3,1..3] of integer;
    pilih,i,j,det,deta,detb : Integer;

Procedure input_matriks;
    begin
        writeln('Masukkan nilai matriks 3x3'); 
        for i:=1 to 3 do 
            for j:=1 to 3 do 
            begin 
                write('[',i,',',j,']='); 
                readln(a[i,j]); 
            end; 
    end;

Procedure perkalian_matriks;
    begin
        input_matriks;
        writeln('Masukkan nilai matriks 3x3 yang ingin dikali'); 
    for i:=1 to 3 do 
        for j:=1 to 3 do 
        begin 
            write('[',i,',',j,']='); 
            readln(b[i,j]); 
        end; 
    writeln('Hasil Perkalian');
    for i:=1 to 3 do 
    begin 
        for j:=1 to 3 do 
            begin
                c[i,j]:=(a[i,1] * b[1,j]) + (a[i,2] * b[2,j]) + (a[i,3] * b[3,j]);
                write(c[i,j],' '); 
            end;
          writeln; 
     end; 
end;

Procedure determinan_matriks;
    begin
        input_matriks;
        detA:= ((a[1,1] * a[2,2] * a[3,3]) + (a[1,2] * a[2,3] * a[3,1])
                + (a[1,3] * a[2,1] * a[3,1]));
        detB:= ((a[1,3] * a[2,2] * a[3,1]) + (a[2,3] * a[3,2] * a[1,1])
                + (a[1,2] * a[2,1] * a[3,3]));
        det := detA - detB;
        writeln ('Determinan matrik = ', det);
        writeln;
    end;

Procedure transpose_matriks;
    begin
        input_matriks;
        for i:=1 to 3 do 
            begin
                for j:=1 to 3 do 
                    write(a[j,i],' '); 
                writeln;
            end;
    end;

Procedure invers_matriks;
    begin
        input_matriks;
        detA:= ((a[1,1] * a[2,2] * a[3,3]) + (a[1,2] * a[2,3] * a[3,1])
                + (a[1,3] * a[2,1] * a[3,1]));
        detB:= ((a[1,3] * a[2,2] * a[3,1]) + (a[2,3] * a[3,2] * a[1,1])
                + (a[1,2] * a[2,1] * a[3,3]));
        det := detA - detB;
        adj[1,1]:=(a[2,2]*a[3,3])-(a[3,2]*a[2,3]);
        adj[1,2]:=(a[2,1]*a[3,3])-(a[2,3]*a[3,1]);
        adj[1,3]:=(a[2,1]*a[3,2])-(a[2,2]*a[3,1]);
        adj[2,1]:=(a[1,2]*a[3,3])-(a[1,3]*a[3,2]);
        adj[2,2]:=(a[1,1]*a[3,3])-(a[1,3]*a[3,1]);
        adj[2,3]:=(a[1,1]*a[3,2])-(a[1,2]*a[3,1]);
        adj[3,1]:=(a[1,2]*a[2,3])-(a[1,3]*a[2,2]);
        adj[3,2]:=(a[1,1]*a[2,3])-(a[1,3]*a[2,1]);
        adj[3,3]:=(a[1,1]*a[2,2])-(a[1,2]*a[2,1]);
         for i:=1 to 3 do 
            begin
                for j:=1 to 3 do 
                    write(adj[i,j]/det:0:2,' '); 
                writeln;
            end;
    end;


begin
    clrscr;
    repeat
        writeln('Selamat Datang di program matriks 3 x 3');
        writeln('Silahkan pilih menu berikut : ');
        writeln('1. Perkalian Matriks');
        writeln('2. Determinan Matriks');
        writeln('3. Transpose Matriks');
        writeln('4. Invers Matriks');
        writeln('5. Keluar');
        writeln;
        write('Pilihan anda : ');
        readln(pilih);
        case pilih of
            1 : perkalian_matriks;
            2 : determinan_matriks;
            3 : transpose_matriks;
            4 : invers_matriks;
        end;
        readln;
	until pilih=5
end.