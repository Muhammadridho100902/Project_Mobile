void main() {
  /**
   * kita bisa membuat lebih dari satu constructor asalkan namanya berbeda seperti berikut
   */

  // ini cara memanggil constructor ke dalam object
  var person = Person("nopa", "Jakarta");
  var person1 = Person.withName("Sugeng");
  var person2 = Person.withAddress("Bantul");
  print(person.name);
  print(person.address);
  print(person1.name);
  print(person2.address);
}

class Person {
  String? name;
  String? address;
  final String country = "Indonesia";

  // constructor 1
  Person(this.name, this.address);

  // constructor 2
  Person.withName(this.name);

  // constructor 3
  Person.withAddress(this.address);


}
