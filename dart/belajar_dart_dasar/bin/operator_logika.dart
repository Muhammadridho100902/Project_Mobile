void main(){
  /**
   * ketentuan !!!
   * && akan menghasilakan nilai true jika nilainya true semua
   * || akan menghasil akan menghasilkan nilai true jika salah satu nilainya true
   */

  // &&
  var nilaiAkhir = 80;
  var nilaiUjian = 70;

  var apakahHasilnyaBagus = nilaiAkhir >= 75;
  var apakahUjiannyaBerhasil = nilaiUjian >= 75;

  print(apakahUjiannyaBerhasil);
  print(apakahHasilnyaBagus);

  var apakahLulus = apakahHasilnyaBagus && apakahUjiannyaBerhasil;
  print(apakahLulus);

  // || operator
  var apakahNaikKelas = apakahHasilnyaBagus || apakahUjiannyaBerhasil;
  print(apakahNaikKelas);

}