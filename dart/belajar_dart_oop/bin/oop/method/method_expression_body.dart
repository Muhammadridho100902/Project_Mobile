class Person {
  
  String? name;
  int? kelas;
  int? umur;

  void startUp() => print("kompputer nyala");
  void sleep() => print("kompputer sleep");
  void shuttDown() => print("kompputer mati");
  String komputerBaru() => "Rog";

}

void main(){
  /**
   * digunkana untuk membuat method yang simple atau bisa jadi satu baris kode
   * mirip seperti anonymous function
   */

  var person = Person();
  person.shuttDown();
  person.startUp();
  person.sleep();
  print(person.komputerBaru());
}