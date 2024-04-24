Program barisanbulangan;
uses crt;
var
    n,jumlah,i: integer;
begin
    clrscr;
    readln(n);
    if n=0 then
        jumlah :=3
    else if n=1 then
        jumlah :=1
    else if n=2 then
        jumlah :=-1
    else if n>2 then
        begin   
            jumlah:=-1;
            for i:=3 to n do
                jumlah := jumlah-2;
        end
    else
        exit;
    writeln('an = ', jumlah);
end.