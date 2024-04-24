program test1;
uses crt;
var
    x : real;
    i : integer;
    c : char;
    s : string;
begin   
    clrscr;
    x := -34.55; 
    x := -3.9E-3;
    writeln (x);
    i := 10;
    i := i * i;
    i := -99999; {range integer tidak cukup karena nilainya hanya -32768 sampai 32767, harusnya longint}
    i := 999.44; {terdapat angka dibelakang koma, harusnya real}
    c := '1';
    c := 1; {short int harusnya, variable char hanya bisa 1 huruf dan string bisa lebih}
    c := 'Bert'; {variable string harusnya}
    c := 'd';
    writeln (c);
    d := 'c'; {tipe variable d belum ditentukan}
    writeln (s);
end.