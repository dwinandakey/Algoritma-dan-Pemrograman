Program urutin_ascending;
uses crt;
Type 
Larik = array [1..100] of integer;
var
    n,i:integer;
    data: larik;

    Procedure bubblesort(var data:larik ; n :integer);
    var
        i,j,temp:integer;
    begin
        for i:=1 to n do
            for j:=1 to n do
                if (data[i] < data[j]) then
                begin
                    temp:=data[i];
                    data[i]:=data[j];
                    data[j]:=temp;
                end;
    end;

    
    Procedure selectionsort(var data: larik ; n :integer);
    var
        i,j,temp,min:integer;
    begin
    for i:=1 to n do
        begin
            min:=i;
        for j:=i to n do
        begin
            if (data[j] < data[min] ) then
                min:=j;
        end;
            Temp:=Data[i]; 
            Data[i]:=Data[min]; 
            Data[min]:=temp; 
        end;
    end;

    procedure insertionsort(var data:larik ; n :integer);
    var 
        i,j,temp:integer; 
    begin 
    for i:=2 to n do 
        begin 
            temp:=data[i]; 
            j:=i-1; 
    while (j>0)and(data[j]>temp) do 
        begin 
            data[j+1]:=data[j]; 
            j:=j-1; 
        end; 
        data[j+1]:=temp; 
        end;
    end;


begin 
    clrscr;
    n:=5; 
    data[1]:=5; 
    data[2]:=8; 
    data[3]:=6; 
    data[4]:=9; 
    data[5]:=1; 
    // Insertionsort(data,n); 
    // Bubblesort(data,n);
    Selectionsort(data,n);
    for i:=1 to n do 
        writeln(data[i]);
end.