import 'dart:collection';

class StringEntry extends LinkedListEntry<StringEntry>{
  String value;

  StringEntry(this.value);
}

void main(){
  final value = LinkedList<StringEntry>();

  value.add(StringEntry("Ridho"));
  value.add(StringEntry("Sei"));

  for(var data in value){
    print(data.value);
  }
}