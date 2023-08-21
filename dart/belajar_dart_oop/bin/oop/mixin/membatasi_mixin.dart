mixin PlayAble on Spotify{
  String? name;

  void play(String name){
    print("You can play $name");
  }
}

abstract class Spotify{}

class Media extends Spotify with PlayAble{}

void main(){
  String name = "Top 10 Music";
  var x = Media();
  x.play(name);
}