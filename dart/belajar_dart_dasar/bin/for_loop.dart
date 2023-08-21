void main(){
  /**
   * for adalah salah satu kata kunci yang digunakan untuk kata kunci perulangan
   * blok kode yang terdapat di dalam for akan selalu diulangi selama kondisi for terpenuhi
   */

  /**
   * format
   * for(init statement; kondisi; post statement){
   *    // blok perulangannya
   * }
   */

  /**
   * init statement akan di eksekusi di awal sebelum perulangan
   * kondisi akan lakaukan pengecekan dalam setiap perulangan, jika true perulangan akan dilakukan terus, jika false perulangan akan diberhentikan
   * post statement akan di lakukan setiap akhir perulangan
   * init statement kondisi dan post statement tidak wajib diisi, jika kondisi tidak diisi maka akan bernilai true
   */

  // contoh 1
  for (var i = 0; i < 3; i++) {
    print('for loop');
  }

  // contoh 2
  int number = 0;
  for(; number <= 10 ;){
    print("perulangan ke -$number");
    number++;
  }
}