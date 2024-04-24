{Program Menentukan Hasil Ujian} 
{ 1} Program Contoh3; 
{ 2}var 
{ 3}   Nilai : integer; 
{ 4} 
{ 5}begin 
{ 6}   writeln('Input nilai yang Anda dapatkan 0 s.d. 100 '); 
{ 7}   write('Nilai Anda = '); 
{ 8}   readln(Nilai); 
{ 9} 
{10}   case nilai of 
{11}     0..59   : writeln(' Anda tidak lulus'); 
{12}     60..74: writeln('Anda lulus dengan nilai cukup');
{13}     75..89: writeln('Anda lulus dengan nilai baik'); 
{14}     90..100: writeln('Anda lulus dengan nilai sangat baik');    
{15}     else writeln(' Anda salah input nilai');    
{16}     end;      
{17}     readln;   
{18}end.    
{19}  
{20}        
{21}      
{22}    
{23} 
{24}    
{25} 