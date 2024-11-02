program bernadya;
uses crt;
var 
    jarak: real; 
    premium: string; 
    biayadasar, biayatambahan, totalakhir: real; // ubah ke real untuk presisi
begin
    clrscr;
    write('Jarak (KM): '); readln(jarak); // ini adalah inputan
    write('Anggota premium (true/false): '); readln(premium); // ini adalah inputan

    biayadasar := 20000;
    
    // Hitung biaya tambahan berdasarkan jarak
    if jarak < 5 then
        biayatambahan := jarak * 5000 // biaya tambahan per km
    else if (jarak >= 5) and (jarak <= 10) then
        biayatambahan := jarak * 4000
    else
        biayatambahan := jarak * 3000;

    totalakhir := biayadasar + biayatambahan;

    // Diskon jika total akhir lebih dari 100000
    if totalakhir > 100000 then
        totalakhir := totalakhir - (totalakhir * 0.10); // diskon 10%

    // Diskon tambahan untuk anggota premium
    if premium = 'true' then
        totalakhir := totalakhir - (totalakhir * 0.05); // diskon 5%

    write('Total akhir: Rp', totalakhir:0:2); // menampilkan total akhir
end.
