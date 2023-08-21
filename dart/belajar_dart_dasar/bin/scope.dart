void main(){
  /**
   * variable atau function hanya dapat di akses di dalam area dimana mereka dibuat
   * hal ini disebut scope
   */

  var name = 'ridho';

  void absen(){
    var result = 'hello $name';
    print(result);
  }

  absen();

  // result tidak bisa di akses karna result berada di dalam function abse bukan di function main
  // print(result);
}