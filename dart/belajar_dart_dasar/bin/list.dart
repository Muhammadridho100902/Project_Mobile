void main(){
  /** 
   * list merupakan tipe data yang dapat menampung kumpulan data
   * saat kita membua list, kita perlu isi sendiri tipe datamya
   * menggunakan []
   * List memiliki method, property dan operator
   * unutk menambahkan data kedalam list menggunakan method aad.;
  */

  List<int> absen = [1,2,3,4];

  absen.add(5);
  print(absen);
  print(absen.length);
  print(absen[1]);
  print(absen.removeAt(0));
  print(absen);
}