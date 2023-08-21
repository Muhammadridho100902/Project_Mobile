void main(){
  var names = ["Yind", "Yorn", "Yodu"];
  final iterator = names.iterator;

  while(iterator.moveNext()){
    print(iterator.current);
  }

  // iterator.moveNext();
  // print(iterator.current);

  // iterator.moveNext();
  // print(iterator.current);
}