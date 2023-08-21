void main() {
  /**
   * adalah ketika kita membuat nama variable dengan nama yang sama di scope yang menutupi variable yang sama di scope di atasnya
   * ini biasa terjadi karna nama yang digunakan oleh parameter disebuah method sm dengan nama yang digunakan field di class
   * ketika variable shadowing, otomatis variable yang ada di scope atasnya tidak bisa di akses
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
    name =
        name; // ini disebut variable shadowing, karna menggunakan nama yang sama antara parameter dan variable deklarasi di atas
    address =
        address; // ini disebut variable shadowing, karna menggunakan nama yang sama antara parameter dan variable deklarasi di atas
  }
}
