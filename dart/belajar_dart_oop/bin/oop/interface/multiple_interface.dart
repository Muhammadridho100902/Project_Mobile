abstract class Car{
  String? name;
}

abstract class HasBrand{
  String getBrand();
}

class Avanza implements Car, HasBrand{
  @override
  String? name = 'Toyota';

  @override
  String getBrand() => 'Kijang';
}

void main(){

  var x = Avanza();
  print(x.name);
  print(x.getBrand());

}

