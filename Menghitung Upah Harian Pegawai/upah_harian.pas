// Author Ibnu Fachrizal
// Date 16/11/2021
// Source code https://github.com/ibnufachrizal/code

Program hitung_upah;
uses sysutils,crt;
var nama : string;
	golongan, upah_harian,upah_lembur,jam_kerja : longint;

begin
	clrscr;
	writeln('Program Menghitung Upah Harian Pegawai');
	writeln('====================');
	writeln('');
	write('Masukan Nama = ');readln(nama);
	write('Masukan Golongan = ');readln(golongan);
	while(golongan < 1) or (golongan > 3) do
	begin
	writeln('');
	textcolor(red);;writeln('Golongan Tidak Tersedia, Pilih angka 1-3');
	textcolor(yellow);;writeln('Tekan Enter untuk Keluar'); readln;
	exit
	end;
	write('Masukan Jam Kerja = ');readln(jam_kerja);
	writeln('');
	
	if (golongan=1) then 
        begin
                upah_harian := 22500;
				if jam_kerja > 8 then
				upah_lembur := (upah_harian+4000*(jam_kerja-8))
				else
				upah_lembur := upah_harian;
        end;
	if (golongan=2) then 
        begin
                upah_harian := 26000;
				if jam_kerja > 8 then
				upah_lembur := (upah_harian+4750*(jam_kerja-8))
				else
				upah_lembur := upah_harian;
        end;
	if (golongan=3) then 
        begin
                upah_harian := 32500;
				if jam_kerja > 8 then
				upah_lembur := (upah_harian+6000*(jam_kerja-8))
				else
				upah_lembur := upah_harian;
        end;
		
	textcolor(yellow);write('[',TimeToStr(Now),']');writeln(' Proses... ');
	sleep(4000); //in milliseconds
	textcolor(green);write('[',TimeToStr(Now),']');writeln(' Success... ');
	sleep(3000); //in milliseconds
	write('[',TimeToStr(Now),']');writeln(' Upah Harian Total = ', upah_lembur);
	writeln('');
	textcolor(yellow);writeln('Tekan Enter untuk Keluar');
	readln;
end.