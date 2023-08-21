void main(){
  /**
   * do while loop mirip dengan while
   * perbedaannya ketika pengecekannya
   * pengecekan kondisi dilakukan setelah perulangan dilakukan
   * minimal kondisi nya di eksekusi 1 kali, walaupun hasilnya false
   */

  // int counter = 100;
  int counter = 1;

  do {
    print("perulangan ke-$counter");
    counter++;
  } while (counter<=10);
}