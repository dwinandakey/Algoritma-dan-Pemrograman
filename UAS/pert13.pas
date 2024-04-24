program search;
uses crt;
type
    larik= array of integer;
var
    data:Larik;
    A,B:Integer;
    ulangi:char;

    function search(data:larik ; n,x:integer):integer;
    Var
        i:integer;
    Begin
    i:=1;
    while (i<n) and (data[i]<> x) do
        i:=i+1;
    if data[i] <> x then
        search:=0
    else
        search:=i;
    end;

begin
    clrscr;
    Repeat
        begin
        Write('Banyak data:');readln(a);
        setlength(data,a);
        write('Data yang dicari:');readln(b);
        for a:=1 to a do
            begin  
                write('Masukkan data ke-', a, ':'); readln (data[a]);
            end;
        if (Search(data,a,b)=0) then 
            writeln('Data tidak ditemukan')
        else
            writeln('Data yang dicari adalah ', b,' berada pada data ke-',Search(data,a,b));
        Write('Ulangi(Y/N)? '); readln(ulangi);
        end;
    until (Ulangi='N') or (Ulangi='n'); writeln('ty');
end.
        
        