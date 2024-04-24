Program musiman;
uses crt;
type
    seasons = (desember,januari,februari,maret,april,mei,juni,juli,agustus,september,oktober,november);

var
    bulan : seasons;

begin
    clrscr;
    write('Masukkan bulan saat ini: ');
    readln(bulan);
        case bulan of
            desember,januari,februari: writeln('musim dingin');
            maret,april,mei: writeln('musim semi');
            juni,juli,agustus: writeln('musim panas');
            september,oktober,november: writeln('musim gugur');
        end;
end.