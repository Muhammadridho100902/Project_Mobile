import 'setter.dart';

void main(){
  var rectangle = Rectangle();
  rectangle.length = 100;
  rectangle.width = 200;

  print(rectangle.length);
  print(rectangle.width);
}