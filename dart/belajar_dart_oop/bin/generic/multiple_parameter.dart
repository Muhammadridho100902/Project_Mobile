class Car <K, V>{
  K? id;
  V? name;

  Car(this.id, this.name);
}

void main(){
  var data1 = Car(1, "Curl");
  var data2 = Car<int, String>(2, "Zayn");

  print("${data1.id} ${data1.name}");
  print("${data2.id} ${data2.name}");
}