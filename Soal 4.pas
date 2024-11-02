program TokoIKLC; // nama program
uses crt; 

var kembalian, i, jumlahPecahan: longint; // mendeklarasikan variabel
begin
  clrscr; 
  readln(kembalian); //input kembalian

  i := 100000; //menetapkan nilai i 
  jumlahPecahan := 0; //menetapkan jumlah pecahan dengan nilai 0

  while kembalian > 0 do   // Memulai proses penghitungan kembalian
  begin
    jumlahPecahan := jumlahPecahan + (kembalian div i);  // Menghitung jumlah pecahan yang digunakan untuk kembalian
    kembalian := kembalian mod i;  // Menghitung kembalian

    if i = 100000 then i := 75000
    else if i = 75000 then i := 50000
    else if i = 50000 then i := 20000
    else if i = 20000 then i := 10000
    else if i = 10000 then i := 5000
    else if i = 5000  then i := 2000
    else if i = 2000  then i := 1000
    else if i = 1000  then i := 500
    else if i = 500   then i := 200
    else if i = 200   then i := 100;
    end; 
  writeln(jumlahpecahan);  // Menampilkan jumlah total pecahan yang dikembalikan
end.
