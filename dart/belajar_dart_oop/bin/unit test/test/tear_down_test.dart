import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  var data = "Eko";

  setUp((){
    print(data);
  });

  setUpAll((){
    print("Start the Test");
  });

  tearDown((){
    print(data);
  });

  tearDownAll(() {
    print("End The Test");
  });

  group("Tear Down Testing", (){
    test("First", () {
      data = "$data Kurniawan";
      expect(data, "Eko Kurniawan");
    },);
  });
}
