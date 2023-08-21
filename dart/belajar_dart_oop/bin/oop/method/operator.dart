void main() {
  /**
   * operator adalah method dengan nama yang special
   * dart memperbolehkan kita menamai method dengan nama operator
   */

  var orange1 = Orange();
  orange1.quantity = 10;

  var orange2 = Orange();
  orange2.quantity = 20;

  var orange3 = orange1 + orange2;
  print(orange3.quantity);

}

class Orange{
  int quantity = 0;

  Orange operator +(Orange other){
    var result = Orange();
    result.quantity = quantity + other.quantity;
    return result;
  }
  
}
