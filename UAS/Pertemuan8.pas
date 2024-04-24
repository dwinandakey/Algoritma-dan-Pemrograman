Program pert8;
uses crt;

    function kuadrat(x:integer):integer;
    begin
        kuadrat:= x*x;
    end;

var
    x :integer;
    hasil:integer;

begin
    clrscr;
    write('nilai c?');
    readln(x);
    hasil:=kuadrat(x);
    writeln ('nilai =', hasil);
end.