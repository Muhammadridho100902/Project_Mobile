import 'package:test/test.dart';

void main() {

  String sayHello(String name){
    return "Hello $name";
  }

  test("Test Say Hello", () {
    var response = sayHello("Brother");
    expect(response, "Hello Brother");
  });

  test("Test With Matcher", () {
    expect(sayHello("dart"), endsWith("dart"));
    expect(sayHello("dart"), startsWith("Hello"));
    expect(sayHello("dart"), equalsIgnoringCase("Hello dart"));
  },);
}
