{ 1}Program Contoh9F; 
{ 2}uses crt; 
{ 3}type Hari1pekan =(Ahad,Senin,Selasa,Rabu,Kamis,Jumat,Sabtu); 
{ 4}     haribulan=1..31; 
{ 5} 
{ 6}var i,awalbulan:hari1pekan; 
{ 7}    j,tglmaks:haribulan; 
{ 8}    x,y,k,lebar:integer; 
{ 9}     
{10}begin 
{11}    clrscr; 
{12}    write('Hari pertama awal bulan: '); 
{13}    readln(awalbulan); 
{14}    write('Jumlah hari bulan ini: '); 
{15}    readln(tglmaks);writeln; 
{16}     
{17}    lebar:=7; 
{18}    for i:=Ahad to sabtu do 
{19}        write(i:lebar); 
{20}     
{21}    y:=5; 
{22}    x:=ord(awalbulan); 
{23}    for j:=1 to tglmaks do 
{24}    begin 
{25}        if x=7 then 
{26}        begin  
{27}            x:=0; 
{28}            y:=y+1; 
{29}        end; 
{30}        gotoxy(lebar*x+1,y);write(j:3); 
{31}        x:=x+1; 
{32}    end; 
{33}    readln 
{34}end.