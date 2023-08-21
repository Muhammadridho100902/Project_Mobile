void main(){
  /**
   * secara defult, function menghasilkan value null
   * agar function menghasilkan value, kita harus mengubah kata kunci void dengan tipe data yang dihasailkan
   * di dalam blok function, kita menggunakan return untuk menghasilkan value
   * kita hanya bisa menghasilkan 1 data dalam sebuah funtion
   */
  var murid = absen('ridho');
  print(murid);

  var total = sum([10,10,10,10,]);
  print(total);

}

  String absen(String name){
    return 'hello $name';
  }

  int sum(List<int> number){
    var total = 0;

    for(var value in number){
      total += value;
    }

    return total;
  }