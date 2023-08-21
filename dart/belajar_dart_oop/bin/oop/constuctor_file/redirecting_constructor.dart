import 'dart:core';

void main(){
  /**
   * saat membuat named constructor, kita bisa memanggil default constructor atau istilahnya adalah melakukan Redirecting Constructor
   * cara membuatnya adalah dengan menambahkan : ("Titik dua"), lalu diikuti dengan memanggil this(parameter), dimana this() disini adalah dianggap mengakses default constructor
   * kita bisa menambahkan body pada redirecting constructor
   */

  var person = Person("Ridho", "Jakarta");
  print(person.name);
  print(person.address);

  var person1 = Person.withName("Tunagus");
  print(person1.name);
  print(person1.address);

  var person2 = Person.withAddress("Bandung");
  print(person2.name);
  print(person2.address);
}

class Person{
  String? name;
  String? address;
  final String country = "indonesia";

  Person(this.name, this.address);

  Person.withName(String name) : this(name, "No Address");
  Person.withAddress(String address): this("No Name", address);
}