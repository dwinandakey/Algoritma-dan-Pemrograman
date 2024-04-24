Program fibonaci;
uses crt;
var
    x: array of integer;
    n: integer;
    i,j:integer;
begin
    clrscr;
    readln (n);
    setlength (x,n);
    // For i:=1 to n do  
    //     Begin 
    //     Write('Input data ke-', i,'= '); Readln(X[i]); 
    //     End; 
    if (n mod 2) = 0 then
        begin
        for i:=3 to n do
        begin
            x[1]:=2;
            x[2]:=3;
            x[i]:=x[i-1]+x[i-2];
        end;
        for j:=1 to n do
            write (x[j], ' ');
        // median
        // x[n div 2]:=(x[(n div 2)]+x[(n div 2)+1])/2;
        writeln;
        writeln('Nilai elemen x/2 adalah ', x[n div 2]);
        readln;
        end
    else
    begin
        writeln ('N harus bernilai genap');
        exit;
    end;
end.
