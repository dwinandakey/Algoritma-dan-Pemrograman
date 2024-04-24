Program pert11;
Uses crt
;

Type mhs = record
NIM : String[4];
Nama : String[20];
Prodi : String[20];
IP : Real;
End;
Var data : mhs
;

Begin
    clrscr;
With data do
Begin
Write('NIM : ');Readln(NIM);
Write('Nama : ');Readln

(Nama);
Write('Program Studi : ');Readln(Prodi);
Write('IP : ');Readln(IP);
End;
Writeln
;
Writeln
;

Writeln('NIM : ',data.NIM);
Writeln('Nama : ',data.Nama);
Writeln('Program Studi : ',data.Prodi);
Writeln('IP : ',data.IP:2:2);
End.