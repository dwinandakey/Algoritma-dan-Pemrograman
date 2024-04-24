program no1;
uses crt;
var
    i:integer;
begin
    clrscr;
    for i:=1 to 100 do
        if i mod 3 = 0 then
            write (i, ' ');
end.