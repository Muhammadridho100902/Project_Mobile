class Jumlah{
  int? first;
  int? second;

  Jumlah(this.first, this.second);

  int call() => first! + second!;
}

void main(){
  Jumlah jumlah = Jumlah(10, 10);
  var total = jumlah();
  print(total);
}