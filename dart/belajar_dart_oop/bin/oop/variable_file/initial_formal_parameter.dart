void main() {
  /**
   * kita bisa gunakan fitur formal parameter, dimana pada parameter kita bisa lgsg menyebutkan field yang akan dirubah
   * fitur ini hanya bisa digunakan di contructor, di method tidak bisa
   * caranya kita cukup mengubah seperti "this.namaField"
   */

  // ini cara memanggil constructor ke dalam object
  var person = Person("nopa", "Jakarta");
  print(person.name);
  print(person.address);
}

class Person {
  String? name;
  String? address;
  final String country = "Indonesia";

  Person(this.name, this.address);
}
