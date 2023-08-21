/// cascade notation merupkan operator yang bisa kita gunakan untuk memberikan operasi pd beberapa object
/// bisa ditandai dengan (..) atau (?..) jika nullable

class User{
  String? username;
  String? name;
  String? email;
}

void main(){

  // tanpa menggunakan cascade notation

  // User user = User();
  // user.username = "dho";
  // user.name = "dho";
  // user.email = "dho@gmail.com";


  // menggunakan cascade notations

  User user = User()
  ..username = "dho"
  ..name = "dho"
  ..email = "dho@gmail.com";

  print(user.name);
}