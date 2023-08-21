class Car<T>{
  T? data;

  Car(this.data);
}

void main(){
  var data = Car<String>("Toyota");
  var data2 = Car(2);
  var data3 = Car(true);
  print(data.data);
  print(data2.data);
  print(data3.data);

}