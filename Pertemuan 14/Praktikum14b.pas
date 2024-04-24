Program urutin_descending;
uses crt;
Type 
Larik = array [1..100] of integer;
var
    n,i:integer;
    data: larik;

    Procedure BubbleSort(var data: Larik; n:integer); 
    var
    i,j,temp:integer;
    Begin
    for i:=1 to n-1 do
        for j:=2 to 5 do
            if (data[j]>data[j-1]) then 
            begin
                temp := data[j];
                data[j] := data[j-1];
                data[j-1] := temp;
            end;
    End;

    Procedure SelectionSort(var Data:Larik; n:integer); 
    var  
        i, j, max, temp:integer; 
    begin 
    For i:=1 to n-1 do 
        begin 
            Max:=i; 
        For j:= i+1 to n do 
        begin 
            If Data[j] > Data[max] then 
                Max:=j; 
        End; 
            Temp:=Data[i]; 
            Data[i]:=Data[max]; 
            Data[max]:=temp; 
        End; 
    End; 

    Procedure InsertionSort(var data:larik; n:integer); 
    var 
        i,j,key:integer; 
    begin 
    for i:=2 to n do 
        begin 
            key:=data[i]; 
            j:=i-1; 
    while (j>0)and(data[j]<key) do 
        begin 
            data[j+1]:=data[j]; 
            j:=j-1; 
        end; 
        data[j+1]:=key; 
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
