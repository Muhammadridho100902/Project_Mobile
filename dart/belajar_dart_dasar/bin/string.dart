void main() {
  /**
   * String adalah tipe data text atau tulisan
   * menggunakan kutip dua atau satu
   */
  String firstName = 'ridho';
  String lastName = "Muhammad";

  print(lastName);
  print(firstName);

  /**
   * String interpolation
   * dapat mengambil data dari variable
   * menggunakan format = ${isiInterpolation} atau $isiInterpolation
   */
  var fullName = '$lastName ${firstName}';
  print(fullName);
}