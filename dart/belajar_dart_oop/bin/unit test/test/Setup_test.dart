import 'package:test/test.dart';
import '../interface/sample.dart';
import 'sample_test.dart';

void main(){
  String data = "Ridho";

  setUp(() {
    data = "Ridho";
  },);

  group("SetUp Function", () {
    test("Test First Name", () {
      data = "$data Flutter";
      expect(data, "Ridho Flutter");
    },);
  },);
}