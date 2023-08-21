void main() {
  /**
   * set merupakan tipe data sama seperti list, namun ada yang berbeda dari list
   * set tidak menerima duplikat data, artinya jika kita menduplikat data, hanya satu yang diterima, yang lain di hiraukan
   * set tidak menjamin urutan data, jika di list sudah pasti urutan data menggunakan index, tapi di set tidak ada index
   */

  String breaks = 'break';

  // cara membuat set
  Set<int> number = {1, 2, 3, 4};
  var strings = <String>{'yt', 'ig', 'fb'};
  var doubles = <double>{2.5, 3.5, 4.5};

  print(number);
  print(strings);
  print(doubles);
  print(breaks);

  print(number.length);
  print(strings.length);
  print(doubles.length);
  print(breaks);

  print(number.add(5));
  print(strings.add('twt'));
  print(doubles.add(6.5));
  print(breaks);

  print(number);
  print(strings);
  print(doubles);
  print(breaks);
}
