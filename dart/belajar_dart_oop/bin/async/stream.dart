import 'dart:async';

Stream<String> stream(){
  return Stream.periodic(Duration(seconds: 2),(i) {
    if (i % 2 == 0) {
      return "$i : genap";      
    } else {
      return "$i : ganjil";
    }
  },);
}

void main(){
  Stream<String> flow = stream();
  StreamSubscription<String> listen = flow.listen((data) {
    print(data);
  },);
  print("Done");
}