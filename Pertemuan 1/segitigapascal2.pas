program pascaltriangle;
var
    i,j,k,n,l:integer;
begin
write('inputkan baris : ');
readln(n);
for i := 0 to n do
    begin
    l:=1;
        for j := 0 to n-i do 
            write(' ' :3);
        for k := 0 to n-j do
            begin
                write(l :3);
                write(' ' :3);
                l:= l * (i - k) div (k + 1);
            end;
        writeln;
    end;
end.