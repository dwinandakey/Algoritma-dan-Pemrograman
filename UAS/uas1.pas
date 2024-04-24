Program urutin_ascending;
uses crt;
Type 
planet = (earth,venus,mars,merkurius,jupiter);
Larik = array [1..5] of planet;

var
    n,i:integer;
    data: larik;

Procedure selectionsort(var data: larik; n :integer);
    var
        i,j,temp,min:integer;
    begin
    for i:=1 to n do
        begin
            min:=i;
        for j:=i to n do
        begin
            if (lowercase(data[j]) < lowercase(data[min]) ) then
                min:=j;
        end;
            Temp:=Data[i]; 
            Data[i]:=Data[min]; 
            Data[min]:=temp; 
        end;
    end;

begin 
    clrscr;
    n:=5; 
    data[1]:=earth; 
    data[2]:=venus; 
    data[3]:=mars; 
    data[4]:=merkurius; 
    data[5]:=jupiter; 
    Selectionsort(data,n);
    for i:=1 to n do 
        writeln(data[i]);
end.