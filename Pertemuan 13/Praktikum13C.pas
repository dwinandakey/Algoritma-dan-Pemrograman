program Binary_Search_Modifikasi_Menaik;
uses crt;
Type 
    Larik = array [1..100] of integer;

    Function BinarySearch(A:larik; N: Integer; X:Integer):integer;
    Var
        low, mid, high: integer;
    begin

        low := 1;
        high := N;
        while (low <= high) do
        begin
            mid := (low + high) div 2;
            if(A[mid] > X) then 
                high := mid - 1
            else if (A[mid] < X) then 
                low := mid + 1
            else break;
        end;
        if A[mid] = X then 
            BinarySearch:= mid {ditemukan}
        else BinarySearch := 0; {tidak ditemukan}
    end;

    var
        A: larik;
        i,n,x : integer;
        ulangi:char;

begin
    clrscr;
    repeat
        n:=10;
        x:=500;
        for i :=1 to n do A[i]:= i*100;
        if (BinarySearch(A,n,x))=0 then
            writeln('Data tidak ditemukan')
        else
            writeln(BinarySearch(A,n,x));
        Write('Ulangi(Y/N)? '); readln(ulangi);
    until (Ulangi='N') or (Ulangi='n');
end.

// program Binary_Search_Modifikasi_Menurun;
// uses crt;
// Type 
//     Larik = array [1..100] of integer;

//     Function BinarySearch(A:larik; N: Integer; X:Integer):integer;
//     Var
//         low, mid, high: integer;
//     begin

//         low := 1;
//         high := N;
//         while (low <= high) do
//         begin
//             mid := (low + high) div 2;
//             if(A[mid] > X) then 
//                 low := mid + 1
//             else if (A[mid] < X) then 
//                 high := mid - 1
//             else break;
//         end;
//         if A[mid] = X then 
//             BinarySearch:= mid {ditemukan}
//         else 
//             BinarySearch := 0; {tidak ditemukan}
//     end;

//     var
//         A: larik;
//         i,n,x,y : integer;
//         ulangi:char;
// begin
//     clrscr;
//     repeat
//         n:=10;
//         write('Data yang dicari: '); readln(x);
//         y:=n;
//         for i :=1 to n do 
//             begin
//                 A[y]:= i*100;
//                 y:=y-1;
//             end;
//         if (BinarySearch(A,n,x))=0 then
//             writeln('Data tidak ditemukan')
//         else
//             writeln(BinarySearch(A,n,x));
//         Write('Ulangi(Y/N)? '); readln(ulangi);
//     until (Ulangi='N') or (Ulangi='n'); 
//     writeln('ty');
// end.