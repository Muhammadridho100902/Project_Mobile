import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main(){
  int Sum(int a, int b) => a + b;

  group("Test Function Sum", () {
    test("Test 1", () {
      expect(Sum(1, 2), equals(3));
      expect(Sum(1, 4), equals(5));
    },);
  },);
}