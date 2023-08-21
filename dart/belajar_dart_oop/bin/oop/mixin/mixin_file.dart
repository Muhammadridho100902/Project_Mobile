mixin PlayMusix{
  String? name;

  void play(String name){
    print('Play Music : $name');
  }
}

mixin StopMusix{
  String? name;

  void stop(String name){
    print('Stop Music : $name');
  }
}

class Music with PlayMusix, StopMusix{
  
}

void main(){
  String name = 'Rihanna';
  var x = Music();
  x.play(name);
  x.stop(name);
}