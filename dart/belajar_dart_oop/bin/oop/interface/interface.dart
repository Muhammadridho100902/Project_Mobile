class Animal {
  String? name;

  void animalRun(String name) {
    print("$name is running");
  }

  void animalStop(String name) {
    print("$name is stopping");
  }
}

class Hunter implements Animal {
  String? name;

  void animalRun(String name) => print("Run from $name");

  void animalStop(String name) => print("Stop from $name");
}

class Lion implements Animal {
  String? name;

  void animalRun(String name) => print("Run From $name");

  void animalStop(String name) => print("Stop from $name");

}

void main() {
  var animal = Animal();
  animal.name = "Rusa";
  print(animal.name);
  animal.animalRun("Kijang");
  animal.animalStop("Kijang");

  print("--------------------");

  var hunter = Hunter();
  hunter.name = "Lion";
  print(hunter.name);
  hunter.animalRun("Lion");
  hunter.animalStop("Lion");
}
