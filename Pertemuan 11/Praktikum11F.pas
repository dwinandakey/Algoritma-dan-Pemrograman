program p11_no1;
uses crt;
var
	n,pilih,i: Integer;
	x : array [1..10] of real;
	total:real;
	
procedure input_data;	
	begin
		write('Masukan banyak data : ');
		readln(n);
		writeln;
		for i :=1 to n do
			begin
				write('Masukan data ke-',i,': ');
				readln(x[i]);	
			end;
	end;

procedure tampil_data;
	begin
		if n=0 then
			writeln('Silahkan input data terlebih dahulu')
		else
		for i:=1 to n Do
			writeln('Data ke-',i,': ',x[i]:0:0);
	end;		

function min : real;
	begin
		min:=x[1];
		if n=0 then
			writeln('Silahkan input data terlebih dahulu')
		else
			begin
				for i:=2 to n Do
				begin
					if (x[i])<(min) then
					min:=x[i];	
				end;
				writeln('Nilai Minimum : ',min:0:2);	
			end;
	end;
		
function max : real;
	begin
		max:=x[1];
		if n=0 then
			writeln('Silahkan input data terlebih dahulu')
		else
		begin
			for i:=2 to n Do
			begin
				if (x[i])>(max) then
				max:=x[i];
			end;
		writeln('Nilai maximum : ',max:0:2);
		end;	
	end;	
	
function rata: real;
	begin
		total:=0;
		if n=0 then
			writeln('Silahkan input data terlebih dahulu')
		else
		begin
			for i:=1 to n Do
			begin
				total:=total+x[i];
			end;
			rata:=total/n;
			writeln('Rata-rata : ',rata:0:2)
		end
	end;	

begin
	repeat
	clrscr;
        writeln('Selamat Datang di aplikasi statistik sederhana');
        writeln('Silahkan pilih menu berikut : ');
        writeln('1. Input data');
        writeln('2. Tampilkan data');
        writeln('3. Tampilkan data terkecil');
        writeln('4. Tampilkan data terbesar');
        writeln('5. Tampilkan rata-rata');
        writeln('6. Keluar');
        writeln;
        write('Pilihan anda : ');
        readln(pilih);
        case pilih of
            1 : input_data;
            2 : tampil_data;
            3 : min;
            4 : max;
            5 : rata;
        end;
        readkey;
	until pilih=6
end.