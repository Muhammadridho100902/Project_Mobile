class Manager {
  String? name;

  void SayHello(String name) {
    print("Hello $name, my name is Manager ${this.name}");
  }
}

class VicePrecident extends Manager {
  void SayHello(String name) {
    print("Hello $name, my name is Vp ${this.name}");
  }
}

void main() {
  // var manager = Manager();
  // manager.name = "ridho";
  // manager.SayHello("dho");

  // var vp = VicePrecident();
  // vp.name = "samtek";
  // vp.SayHello("samsu");

  int? num;
  print(num);
  print('Your name in upper case is ${"me".toUpperCase()}');
}
