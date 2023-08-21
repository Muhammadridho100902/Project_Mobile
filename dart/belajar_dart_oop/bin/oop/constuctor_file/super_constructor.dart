class Manager{
  String? name;

  Manager(String? name){
    this.name = name;
  }
}

class VicePresident extends Manager{
  VicePresident(String name) : super(name){
    print("Hello president $name");
  }
}

void main(){
  var x = Manager("Subroto");
  x.name = 'Brody';
  print(x.name);

  var y = VicePresident("Gatot");
}