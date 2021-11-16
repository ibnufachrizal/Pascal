// Author Ibnu Fachrizal
// Date 16/11/2021
// Source code https://github.com/ibnufachrizal/code

program hitung_luas; 
uses sysutils,crt;
const pi = 3.14;
var	a,t,p,l:real;
	diameter,radius,hasil:real;
	jawab:char;
		
begin
        clrscr;
        writeln('Program Menghitung Luas');
        writeln('=======================');
        writeln('');
        writeln('______________________________');
		writeln('');
		writeln('1. Hitung Luas Segitiga');
		writeln('2. Hitung Luas Persegi Panjang');
		writeln('3. Hitung Luas Lingkaran');
		writeln('4. Keluar');
        writeln('______________________________');
		writeln('');
        write('Silahkan memilih yang anda inginkan : ');readln(jawab);

        if (jawab= '1') then
        begin
		write('Masukkan Nilai Alas = ');readln(a);
        write('Masukkan Nilai Tinggi = ');readln(t);
                hasil:= 1/2*(a*t);
        end
        else if (jawab= '2') then
        begin
		write('Masukkan Nilai Panjang = ');readln(p);
        write('Masukkan Nilai Lebar = ');readln(l);
                hasil:= p*l;
        end
        else if (jawab= '3') then
        begin
		write('Masukkan Nilai Diameter = ');readln(diameter);
                radius:= diameter/2;
				hasil:= pi*radius*radius;
        end
		else if (jawab= '4') then
        begin
                exit
        end
		
		else
		begin
      	writeln('');
		textcolor(red);writeln('Menu Tidak Tersedia, Pilih angka 1-4');
		textcolor(yellow);writeln('Tekan Enter untuk Keluar'); readln;
		exit
		end;
		writeln('');
		textcolor(yellow);write('[',TimeToStr(Now),']');writeln(' Proses... ');
		sleep(4000); //in milliseconds
		textcolor(green);write('[',TimeToStr(Now),']');writeln(' Success... ');
		sleep(3000); //in milliseconds
		writeln('');
		write('Nilai Luas = ', hasil:0:2);
		writeln('');
		textcolor(yellow);writeln('Tekan Enter untuk Keluar');
		readln;
end.