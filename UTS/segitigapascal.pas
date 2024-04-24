program Pascal_triangle;
var 
d,c,y,x,n : integer;
   begin
      readln(n);
      writeln;
      for y:=0 to n do
      begin
         c:=1;
         for d:=0 to n - y do
         begin
            write(' ');
         end;
         for x:=0 to y do
         begin
            write(c);
            write(' ');
            c := c * (y - x) DIV (x + 1);
         end;
         writeln;
      end;
      for y:=n-1 downto 0 do
      begin
         c:=1;
         for d:=0 to n - y do
         begin
            write(' ');
         end;
         for x:=0 to y do
         begin
            write(c);
            write(' ');
            c := c * (y - x) DIV (x + 1);
         end;
         writeln;
      end;
      readln;
   end.