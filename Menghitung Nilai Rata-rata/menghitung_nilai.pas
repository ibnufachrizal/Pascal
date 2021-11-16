// Author Ibnu Fachrizal
// Date 16/11/2021
// Source code https://github.com/ibnufachrizal/code

Program hitung_nilai;
uses sysutils,crt;
var
 biaya:string;
 grade: char;
 rata_rata: double;
begin
	clrscr;
	writeln('Program Mencari Grade dan Jumlah Biaya');
	writeln('====================');
	writeln('');
	write('Masukan Nilai = ');readln(rata_rata);
	while rata_rata > 100 do
	begin
	writeln('');
	textcolor(red);writeln('Nilai Tidak Tersedia, Pilih angka 0-100');
	textcolor(yellow);writeln('Tekan Enter untuk Keluar');readln;
	exit
	end;

   If rata_rata >= 91 Then
   begin 
      grade := 'A';
	  biaya  := 'Rp. 50.000';
   end
   
   else if rata_rata >= 76 Then
   begin
      grade := 'B';
	  biaya  := 'Rp. 150.000';
   end
   
   else if rata_rata >= 60 Then
   begin
      grade := 'C';
	  biaya  := 'Rp. 250.000';
   end
   
   else if rata_rata >= 40 Then
   begin
      grade := 'D';
	  biaya  := 'Rp. 350.000';
   end
   
   else if rata_rata >= 1 Then
   begin
      grade := 'E';
	  biaya  := 'Rp. 450.000';
   end
   
   else
   begin
      grade := '0';
	  biaya  := 'Rp. 550.000';
   end;
   
	writeln('');
	textcolor(yellow);write('[',TimeToStr(Now),']');writeln(' Proses... ');
	sleep(4000); //in milliseconds
	textcolor(green);write('[',TimeToStr(Now),']');writeln(' Success... ');
	sleep(3000); //in milliseconds
	writeln('');
	writeln('Grade : ', grade);
	writeln('Jumlah Bayar = ', biaya);
	writeln('');
	begin
		textcolor(yellow);writeln('Tekan Enter untuk Keluar');readln;
	exit
	end;
end.