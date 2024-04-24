program test2;
uses crt;
var
    x : real;
    i,j : integer;
begin  
    clrscr;
    readln (x);
    readln (i);
    readln (j);
    writeln ('Format Output');
    writeln ('===============');
    writeln ('integer tidak terformat ',i);
    writeln ('Penghitungan integer tidak terformat', i*i);
    writeln ('Integer terformat ', i:4);
    writeln ('Integer terformat ', j:4);
    writeln ('Bilangan real tidak terformat ',x);
    write ('Bilangan real terformat ');
    write (x:8:2);
end.