Program KalkulatorSedeahana;
uses crt;
var
    operand1, operand2, hasil: real;
    operato: string;
begin
    clrscr;
    writeln ('Kalkulator');
    writeln ('==============');
    write ('Operand 1 : '); readln (operand1);
    write ('Operator : '); readln (operato);
    write ('Operand 2 : '); readln (operand2);
    case operato of
        '+' : hasil:= operand1 + operand2;
        '-' : hasil:= operand1 - operand2;
        'x' : hasil:= operand1 * operand2;
        ':' : hasil:= operand1/operand2;
    else
        exit;
    end;
    writeln ('Hasil : ', hasil:0:2);
end.





