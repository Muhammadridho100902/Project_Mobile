import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main(){
  var data = "Eko";

  setUpAll(() {
    print("Show First at run");
  },);

  group("Set Up All Test", (){
    // test("String First", () {
    //   data = "$data Kurniawan";
    //   expect(data, "Eko Kurniawan");
    // },);
    test("String Second", () {
      data = "$data Kurniawan Khannedy";
      expect(data, "Eko Kurniawan Khannedy");
    },);
  });


}

