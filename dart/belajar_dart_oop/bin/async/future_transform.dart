Future<String> sayHello() {
  return Future.value("Hello Muhammad Ridho Phageis Swara");
}

void main() {
  sayHello()
      .then(
        (value) => value.split(' '),
      )
      .then((value) => value.reversed)
      .then((value) => value.map((e) => e.toUpperCase()))
      .then((value) => print(value));

  print("Done");
}
