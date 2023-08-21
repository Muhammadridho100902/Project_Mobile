void main() {
  /**
   * untuk membuat function tanpa menggunakan nama
   * sama seperti function yang lain, tp ini tidak menggunakan nama
   * digunakan biasanya pd saat memanggil function yang memiliki parameter function
   */
  print(murid('ridho'));
  print(siswa('nova'));

}

var murid = (String nama){
  return 'hallo $nama';
};

var siswa = (String name) => name.toUpperCase();
