{Program Konversi Nilai CASE} 
 
{ 1}Program Contoh1;  
{ 2}var  Nilai : integer;
{ 3}     grade : char; 
{ 4}begin 
{ 5}   writeln('Input nilai yang Anda dapatkan 0 s.d. 100 '); 
{ 6}   write('Nilai Anda = '); 
{ 7}   readln(Nilai); 
{ 8}  
{ 9}   case Nilai of 
{10}      0..59:  grade:='D'; 
{11}     60..69:  grade:='C'; 
{12}     70..79:  grade:='B'; 
{13}     80..100: grade:='A'; 
{14}   else 
            grade:='F'; 
            writeln ('Anda salah input nilai');
            exit;
{15}   end; 
{16}   writeln('Grade Anda ', Grade ); 
{17}   Case Grade of 
{18}    'D': writeln(' Kurang memuaskan'); 
{19}    'C': writeln(' Cukup'); 
{20}    'B': writeln(' Baik'); 
{21}    'A': writeln(' Sangat Baik'); 
{22}    'F': writeln('Anda salah input nilai') 
{23}   end; readln 
{24}end.