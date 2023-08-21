void main(){
  /**
   * biasanya terjadi ketika kita mengakses data tp datanya tidak ada, jadi akan menghasilkan null
   * dart mendukung null safety untuk memudahkan para programmer
   * dart akan meminta kita untuk melakukan null check untuk mengakses data nullable
   */

  int? age = null;
  age = 1;

  if (age != null) {
    print(age.toDouble());
  }

  String? guest;

  // default value
  String guestName = guest ?? 'guest';

  // ternary operator
  String nameGuest = guest != null ? guest : 'guest';

  print(guestName);
  print(nameGuest);

  // mengakses nullable member
  int? dataInt;
  double? dataDouble;

  if (dataInt != null) {
    dataDouble = dataInt.toDouble();
  }

  print(dataDouble);

}