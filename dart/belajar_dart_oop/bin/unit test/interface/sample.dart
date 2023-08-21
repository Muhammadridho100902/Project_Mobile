import 'package:test/test.dart';

void main() {}

class BuatTest {
  String data = "Ridho";

  void SetUp(String data) {
    setUp(
      () {
        data = "Ridho";
      },
    );
  }
}
