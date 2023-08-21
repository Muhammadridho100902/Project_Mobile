Future<String> sayHello(String name) {
  return Future.error(Exception("Ups"));
}

class tangkaperror implements Exception{
  String? message;

  tangkaperror(this.message);
}

void main() {
  sayHello("Ridho")
      .then(
        (value) => print(value),
      )
      .catchError(
        (tangkaperror) => "$tangkaperror",
      )
      .whenComplete(
        () => print("Future is Done"),
      );
}
