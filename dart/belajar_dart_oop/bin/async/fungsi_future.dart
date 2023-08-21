Future<void> hello(){
  return Future.delayed(Duration(seconds: 10), () {
    print("Hello World");
  },);
}

void main(){
  hello();
  print("Done");
}