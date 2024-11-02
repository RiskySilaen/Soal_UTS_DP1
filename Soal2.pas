program pakstephen;
uses crt;

var
  jumlahPembeli, jumlahSayur, hargaSayur, jumlahBeli, i, j: Integer;
  totalBelanja: Real; // mendeklarasikan variabel

begin
  clrscr;
  
  // masukkan jumlah pembeli
  Write('Masukkan jumlah pembeli: ');
  ReadLn(jumlahPembeli);

  
  for i := 1 to jumlahPembeli do
  begin
    WriteLn('Pembeli ke-', i, ':');
    
    // masukkan jumlah jenis sayur yang dibeli
    Write('Masukkan jumlah jenis sayur yang dibeli: ');
    ReadLn(jumlahSayur);
    
    totalBelanja := 0; 
    
    
    for j := 1 to jumlahSayur do
    begin
      // masukkan harga dan jumlah sayur yang dibeli
      Write('Masukkan harga sayur ke-', j, ': ');
      ReadLn(hargaSayur);
      Write('Masukkan jumlah sayur ke-', j, ': ');
      ReadLn(jumlahBeli);
      
      // Menghitung total untuk jenis sayur
      totalBelanja := totalBelanja + (hargaSayur * jumlahBeli);
    end;
    
    // Output total belanja untuk pembeli
    WriteLn('Total belanja pembeli ke-', i, ': Rp ', totalBelanja:0:2);
  end;

  ReadLn;
end.
