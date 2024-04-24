Program Sequential_Search;
Uses crt;
Type 
    Larik = array [1..100] of integer;
var
    data:Larik;
    B,C,D:Integer;
    ulangi:char;

    Function SequentialSearch(A:Larik; N:integer; X:integer):integer;
    Var
        i:integer;
    Begin
        i:=1;
        while (i<N) and (A[i] <> X) do i:= i + 1;
        if (A[i] <> X) then SequentialSearch:=0
        else SequentialSearch:=i;
    End;

begin
    clrscr;
    Repeat
        Write('Banyak data:');readln(b);
        write('Data yang dicari:');readln(c);
        for d:=1 to b do
            begin  
                write('Masukkan data ke-', d, ':'); readln (data[d]);
            end;
        if SequentialSearch(data,b,c)=0 then 
            writeln('Data tidak ditemukan')
        else
            writeln('Data yang dicari adalah ', c,' berada pada data ke-',SequentialSearch(data,b,c));
        Write('Ulangi(Y/N)? '); readln(ulangi);
    until (Ulangi='N') or (Ulangi='n'); writeln('ty');
end.