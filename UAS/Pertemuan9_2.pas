Program jangkauan_variabel;
uses crt;
var x : integer;

    Procedure f1;
    begin
        writeln ('1', x);
    end;
    
    Procedure f2;
    var x : integer;
    begin
        writeln('2', x);
        x:=100;
        writeln('3',x);
    end;

begin
    clrscr;
    x:=10;
    f1;
    f2;
    writeln('4', x);
end.