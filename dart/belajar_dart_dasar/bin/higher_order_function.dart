void main(){
  /**
   * function yang menggunakan function sebagai variable, parameters atau return value;
   * bisa digunakan untuk filtering kata" kasar
   */
  sayHello('gila', badWord);
  sayHello('ridho', badWord);
}

void sayHello(String name, String Function(String) filter){
  var filterNamed = filter(name);
  print("hi $filterNamed");
}

String badWord(String name){
  if (name == 'gila') {
    return "****";
  } else{
    return name;
  }
}