class Person{
  String user = "dho";

  void sayHello(String user){
    print("Hello $user my name is ${this.user}");
  }
}

class OtherPerson extends Person{
  String user = "pro";
}

void main(){
  var person = Person();
  person.sayHello("Skuy");

  var otherperson = OtherPerson();
  otherperson.sayHello("Bross");
}