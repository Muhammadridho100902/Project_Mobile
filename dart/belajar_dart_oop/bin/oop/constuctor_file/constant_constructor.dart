void main(){
  /**
   * gunakan constant pada constructor jika data pada sebuah class tidak pernah berubah
   * caranya menambahkan kata kunci const
   * keuntungannya : ketika kita membuat constant object, secara otomatis object yang sama akan digunakan
   */

  var person1 = const Nilai(10, 10);
  var person2 = const Nilai(10, 10);

  print(person1 == person2);
}

class Nilai {
  final int x;
  final int y;

  const Nilai(this.x, this.y);
}