void main() {
  /// variable with tipe data

  String name = "Muhammad Ridho";

  print(name);

  print(name);

  print(name);

  print(name);

  /// variable with final & const

  /* ketentuan final
  // varible tidak dapat di deklarasikan lagi
  // tp valuenya masih bisa diubah
  seperti contoh berikut */
  final array1 = [1, 2, 3];
  print(array1);

  // menjadi
  array1[0] = 10;
  print(array1);

  // ketentuan const / constant
  // varible tidak bisa di deklarasikan ulang
  // plus value dari varible tidak bisa diubah seperti contoh dibawah
  // const array2 = [1, 2, 3];
  // array2[0] = 10;
  // print(array2);

  /* variable with late
  // menjadikan variable itu menjadi lazy
  // hanya dideklarasikan ketika dipanggil atau diakses
  maka tambahkan late seperti contoh dibawah */
  late var value = getValue();
  print("variable sudah dibuat");
  print(value);
}

String getValue() {
  print("Function di panggil");
  return "Michael";
}
