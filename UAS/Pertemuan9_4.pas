Program urut;
uses crt;

Type
Day = (Mon,Tue,Wed,Thu,Fri,Sat,Sun);


var
    hari:day;
    pil:integer;
    order:mon..sun;

begin
    clrscr;
    Write ('Hari ini? ');readln (hari);
    repeat
        Writeln('PILIH MENU DIBAWAH');
        writeln('1. Tommorrow');
        writeln('2. Yesterday');
        writeln('3. Keluar');
        writeln('Pilihan anda? ');
        readln(pil);
        case pil of
            1:  begin
                if hari=sun then
                    order:=mon
                else
                    begin
                        order:=succ(hari);
                    end;
                writeln(order);
                end;
            2:  begin
                if hari=mon then
                    order:=sun
                else
                    begin
                        order:=pred(hari);
                    end;
                writeln(order);
                end;
        end;
    until pil=3;
end.

