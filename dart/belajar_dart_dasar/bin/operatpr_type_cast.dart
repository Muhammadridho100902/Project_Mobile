void main(){
  /**
   * "as" melakaukan konversi tipe data secara paksa
   * "is" akan menghasilkan true, jika object sesuai dengan tipe data;
   * "!is" akan menghasilkan true, jika object tidak sesuai dengan tipe data;
   */

  dynamic variable = 100;

  // var variableString = variable as String; baka error
  // print(variableString);

  var variableInt = variable as int;
  print(variableInt);

  print(variable is int);
  print(variable is bool);
  print(variable is String);

  print(variable is! int);
  print(variable is! bool);
  print(variable is! String);
}