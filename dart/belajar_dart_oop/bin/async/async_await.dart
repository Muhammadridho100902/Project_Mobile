Future<String> first() async {
  return "Ridho";
}

Future<String> last() async {
  return "Phageis";
}

Future<String> sayHello(String name) async {
  return "Hello $name";
}

void main() {
  first().then((first) {
    return last().then((last) {
      return sayHello("Ridho").then(
        (value) => print(value),
      );
    });
  });
}
