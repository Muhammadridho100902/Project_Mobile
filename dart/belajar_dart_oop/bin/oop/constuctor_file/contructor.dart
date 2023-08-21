void main(){

  /**
   * di dalam class, kita bisa membuat contructor, contructor adalah method yang akan dipanggil saat pertama kali object dibuat
   * mirip seperti method, kita juga bisa membuat parameter di contructor
   * nama constructor harus sama dengan nama kelas, tidak usah menggunakan kata void atau return value
   * ketika kita membuat constructor, maka saat kita mmebuat object baru, kita wajib mengikuti parameter yang ada di constructor
   */

  // ini cara memanggil constructor ke dalam object
  var person = Person("Ridho", "Jakarta");
  print(person.name);
  print(person.address);

}

class Person{

  String? name;
  String? address;
  final String country = "Indonesia";

  // ini adalah contructor dengan dua parameter
  Person(String paramName, String paramAddress){
    name = paramName;
    address = paramAddress;
  }

}