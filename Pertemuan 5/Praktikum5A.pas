{Program Konversi Nilai CASE} 
 
{ 1}Program Contoh1;  
    label akhir;
{ 2}var  Nilai : real; 
{ 3}     grade : char; 
{ 4}begin 
{ 5}   writeln('Input nilai yang Anda dapatkan 0 s.d. 100 '); 
{ 6}   write('Nilai Anda = '); 
{ 7}   readln(nilai);
{ 8}   if (nilai<0) or (nilai>100) then goto akhir;
{ 9}   case trunc(Nilai) of 
{10}      0..59:  grade:='D'; 
{11}     60..69:  grade:='C'; 
{12}     70..79:  grade:='B'; 
{13}     80..100: grade:='A'; 
{14}   end;
{15}   writeln('Grade Anda ', Grade ); 
{16} 
{17}   Case Grade of 
{18}    'D': writeln(' Kurang memuaskan'); 
{19}    'C': writeln(' Cukup'); 
{20}    'B': writeln(' Baik'); 
{21}    'A': writeln(' Sangat Baik'); 
{22}   end; 
       akhir:
              writeln ('Anda salah input nilai');
              exit;
{23}   readln
{24}end.