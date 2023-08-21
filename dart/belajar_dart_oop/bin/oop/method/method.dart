class Person {
  // /**
  //  * kita jg bisa menambahkan method kedalam class
  //  * method adalah function yang ada di dalam class
  //  * cara deklarasiinnya method tersebut di dalam blok kode class
  //  * kita bisa menambahkan return value, parameter di dalam blok method yang ada di dalam blok class
  //  * cara menggunakannya sama seperti mengakses field yaitu dengan  (.)
  //  */

  String? name;
  int? kelas;
  int? umur;

  void sayHello(String paramName) {
    print("hello $paramName $name]");
  }
}

void main() {
  var person = Person();
  person.name = "yudi";
  person.kelas = 12;
  person.umur = 17;

  person.sayHello('Sugiono');
  print(person);
}
