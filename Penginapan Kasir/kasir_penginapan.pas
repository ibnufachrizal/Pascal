// Author Ibnu Fachrizal
// Date 19/01/2022
// Source code https://github.com/ibnufachrizal/code

program Kasir_Penginapan;
 uses crt;
 var
 no,lm_nginap:integer;
 total,cash,harga,kembalian:longint;
 nama,noroom,jns_penginapan:string;
 begin
clrscr;
writeln('                     Program Kasir Penginapan                        ');
writeln(' ===================================================================='); 
writeln(' Fasilitas Penginapan:');
writeln(' 1. Full AC');
writeln(' 2. Jaringan WIFI');
writeln(' 3. Pelayanan Penginapan 24 jam');
writeln;
textcolor(yellow);
writeln('  ___________________________________________________________________');
writeln(' | NO | Jenis Penginapan  | Harga Sewa |    Fasilitas Tambahan       |');
writeln(' |____|___________________|____________|_____________________________|');
writeln(' | 1  |  Executive Room   | 1.000.000  |  1. TV LCD Satelite         |');
writeln(' |    |                   |            |  2. King Size Bed           |');
writeln(' |    |                   |            |  3. Shower Hot & Cool       |');
writeln(' |    |                   |            |  4. Mini Bar                |');
writeln(' |____|___________________|____________|_____________________________|');
writeln(' | 2  |  Deluxe Room      |   650.000  |  1. TV LCD 24 in            |');
writeln(' |    |                   |            |  2. Queen Size Bed          |');
writeln(' |____|___________________|____________|_____________________________|');
writeln(' | 3  |  Standard Room    |   300.000  |  1. TV 17 in                |');
writeln(' |    |                   |            |  2. Single Bad              |');
writeln(' |____|___________________|____________|_____________________________|');
writeln;
begin
writeln;
textcolor(15);
write(' [+] Nama Pengunjung  = '); readln (nama);
write(' [+] Jenis Penginapan = '); readln (no);
while no > 3 do
	begin
	writeln;
	textcolor(red);writeln(' Jenis Penginapan Tidak Tersedia, Pilih angka 1-3');
	writeln;
	textcolor(yellow);writeln(' Tekan Enter untuk Keluar'); readln;
	exit
	end;
if no= 1 then harga:=1000000;
if no= 2 then harga:=650000;
if no= 3 then harga:=300000;
textcolor(green); writeln(' [*] Harga            = ', harga);
textcolor(15); write(' [+] Nomor Kamar      = '); readln(noroom);
write(' [+] Lama Sewa (hari) = '); readln(lm_nginap);
clrscr;
writeln('                        STRUK PENGINAPAN                           ');
writeln(' ==================================================================');
writeln('  Nama Pengunjung = ', nama);
writeln('  Nomor Kamar     = ', noroom);
writeln('  _________________________________________________________________');
writeln(' | NO | Jenis Penginapan | Harga Sewa | Lama Sewa |     Total      |');
writeln(' |____|__________________|____________|___________|________________|');
writeln(' |    |                  |            |           |                |');
writeln(' |____|__________________|____________|___________|________________|');
gotoxy(4,8);
writeln(no);
if no= 1 then jns_penginapan:=' Executive Room';
if no= 2 then jns_penginapan:=' Deluxe Room';
if no= 3 then jns_penginapan:=' Standard Room';
gotoxy(8,8);
writeln(jns_penginapan);
if no= 1 then harga:=1000000;
if no= 2 then harga:=650000;
if no= 3 then harga:=300000;
gotoxy(28,8);writeln('Rp. ',harga);
gotoxy(43,8);writeln(lm_nginap, ' hari');
total:= harga*lm_nginap;
gotoxy(56,8);
writeln('Rp. ', total);
writeln;
textcolor(green);writeln; write(' Cash      = Rp. ') ; readln (cash);
kembalian:= cash-total;
textcolor(red);writeln(' Kembalian = Rp. ', kembalian);
writeln; textcolor(15);
writeln;
writeln(' ==================================================================');
writeln('                TERIMA KASIH ATAS KUNJUNGAN ANDA                   ');
writeln;
textcolor(yellow);writeln(' Tekan Enter untuk Keluar'); readln;
	exit
end;
end.
