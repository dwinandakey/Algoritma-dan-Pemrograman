{Contoh program yang menunjukkan perbedaan transfer parameter 
By Value dan By Location} 
Program Contoh8E; 
var 
    x,y:integer; 

    procedure subpro (a:integer; var b:integer); 
    var 
        c:integer; 
    begin 
        c:=a; a:=b; b:=c; 
    end; 

begin 
    x:=5; y:=23; 
    subpro(x,y); 
    writeln('transfer by value:    x= ',x); 
    writeln('transfer by location: y= ',y); 
end. 