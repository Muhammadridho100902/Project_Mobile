Future<List<String>> sayHello(String name) {
  return Future.delayed(Duration(seconds: 5), () {
    return ['Hello $name', 'Good Morning $name', 'How was your day boy $name'];
  });
}

void main() {
  sayHello("Ridho")
      .then(
        (value) => print(value),
      )
      .onError(
        (error, stackTrace) => print(error),
      )
      .catchError(
        (error) => print("The Error is : ${error.message}"),
      )
      .whenComplete(
        () => print("Future Is Done"),
      );
  print("Done");
}
