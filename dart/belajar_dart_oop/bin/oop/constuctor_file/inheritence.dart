class Manager {
  String? name;

  void SayHello(String name) {
    print("Hello $name, my name is ${this.name}");
  }
}

class VicePrecident extends Manager {}

void main() {
  var manager = Manager();
  manager.name = "ridho";
  manager.SayHello("dho");

  var vp = VicePrecident();
  vp.name = "samtek";
  vp.SayHello("samsu");
}
