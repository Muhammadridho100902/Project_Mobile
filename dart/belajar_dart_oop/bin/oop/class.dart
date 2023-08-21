void main() {
  /**
   * class adalah bluprint, prototyp atau cetakan untuk membuat object
   * class berisikan deklarasi semua function dan properties yang dimiliki oleh object
   * setiap object selalu dibuat dari class
   * class bisa membuat object tanpa batas
   * formatnya adalah PascalCase (MuridSmp)
   */

  // Person() adalah object dari class Person
  var person1 = Person();
  print(person1);

  // Person() adalah object dari class Person
  Person person2 = Person();
  print(person2);

  var person3 = Person();
  print(person3.namaMotor);

  /**
   * manipulasi field
   * field yang di dalam object dapat di manipulasi, kecuali yang ada finalnya
   * cara manipulasi data field sama seperti merubah data variable
   * untul mengakses field kita harus menggunakana (.) sebelum nama nama field dan setelah nama object
   */

  var peron4 = Person();
  peron4.name = "syabani";
  peron4.namaSekolah = "smp36";
  print(peron4.name);

  // fiedl nama motor tidak bisa berubah karna mengandung final jika di run akan error
  // peron4.namaMotor = "kawasaki";
}

class Person {

  // /**
  //  * field / properties / atributtes adalah data yang bisa kita sisipkan kedalam object
  //  * namun sebelum itu, kita wajib mendeklarasikan data apa saja yang ada di dalam object tersebut di sebuah class
  //  * membuat field sama seperti membuat variable, tp ini dibuat di dalam blok kode class
  //  * field wajib dimasukan nilainya, kecuali value
  //  * menggunakan ? untuk field yang nullable
  //  * gunakan kata kunci final untuk field yang tidak ingin berubah
  //  */

  String name = "ridho";
  String? namaSekolah;
  final String namaMotor = "Yamaha";

}
