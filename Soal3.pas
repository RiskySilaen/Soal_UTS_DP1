program bintang; // nama program
uses crt;
var n,a,b: integer; //mendeklarasikan variabel
begin
    clrscr; // membersihkan layar
    write('masukkan nilai n = '); readln(n); // masukkan nilai n
    if n mod 2=0 then 
    writeln('nilai n harus bilangan ganjil!!') //memberikan pesan kesalahan
    else 
    begin 
    for a:=0 to n-1 do 
    begin 
        for b:=0 to n-1 do 
    begin
        if (a=b) or (a=n-b-1) then 
        write('*') //menampilkan bintang
        else 
        write(' '); 
    end;
    writeln; 
    end;
    end;
end.
