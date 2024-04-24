{Program Cetak Persegi Panjang ‘#’ Full}
Program Contoh74; 
uses crt;
var 
   i,j,lebar,panjang:integer; 
   karakter: char; 
begin 
   clrscr;
   write('Inputkan Jumlah Panjang : '); readln(panjang);
   write('Inputkan Jumlah Lebar : '); readln(lebar);
   write('Inputkan Karakter : '); readln(karakter);
   for i:=1 to lebar do 
      begin
      if (i=1) or (i=lebar) then
         begin
         for j:=1 to panjang do
            write (karakter:2);
         end
      else
         begin
            write (karakter:2);
               for j:=2 to panjang-1 do
                  write (' ':2);
            write (karakter:2);
         end;
      writeln;
      end;
end.
         
      

