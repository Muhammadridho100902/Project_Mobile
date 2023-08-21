void main() {
  /**
   *  kita bisa menggunakan kata kunci this untuk mengakses blok di dalam konstraktor atau metho dlm class
   *  kadang kita butuh akses ke field yang namanya sama dengan parameter di method, hal itu tidak dapat langsung menyebut nama field, untuk menanggulangi hal itu kita bisa menggunakan kata this
   * this juga bisa mengakses method
   * this bisa mengatasi masalah varibale shadowing
   */

  // ini cara memanggil constructor ke dalam object
  var person = Person("Ridho", "Jakarta");
  print(person.name);
  print(person.address);
}

class Person {
  String? name;
  String? address;
  final String country = "Indonesia";

  // ini adalah contructor dengan dua parameter
  Person(String name, String address) {
    this.name =
        name; // ini disebut variable shadowing, karna menggunakan nama yang sama antara parameter dan variable deklarasi di atas
    this.address =
        address; // ini disebut variable shadowing, karna menggunakan nama yang sama antara parameter dan variable deklarasi di atas
  }
}
