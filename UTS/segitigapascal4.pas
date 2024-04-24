program number;
uses crt;
var 
n, i, g, a : integer;

begin
clrscr;
   Write ('N : '); Readln(n);
   Writeln;
   for i:= 1 to n do 
   begin
      if n mod 2=1 then
         begin
            if i mod 2=1 then
               begin
                  for g:= 1 to (((n-i) div 2)) do write (' ':2);
                  for a:= 1 to ((i div 2)+1) do write (a:2);
                  for a:= (i div 2) downto 1 do write (a:2);
                  for g:= 1 to (((n-i) div 2)) do write (' ':2);
               end
            else
               begin
                  for g:= 1 to (((n-i) div 2)) do write (' ':2);
                  write (' ':1);
                  for a:= 1 to (i div 2) do write (a:2);
                  for a:= (i div 2) downto 1 do write (a:2);
                  write (' ':1);
                  for g:= 1 to (((n-i) div 2)) do write (' ':2);
               end;
         end

      else
            if i mod 2=1 then
               begin
                  for g:= 1 to (((n-i) div 2)) do write (' ':2);
                  write (' ':1);
                  for a:= 1 to ((i div 2)+1) do write (a:2);
                  for a:= (i div 2) downto 1 do write (a:2);
                  write (' ':1);
                  for g:= 1 to (((n-i) div 2)) do write (' ':2);
               end
            else
               begin
                  for g:= 1 to (((n-i) div 2)) do write (' ':2);
                  for a:= 1 to (i div 2) do write (a:2);
                  for a:= (i div 2) downto 1 do write (a:2);
                  for g:= 1 to (((n-i) div 2)) do write (' ':2);
               end;
   writeln;
   end;
end.
