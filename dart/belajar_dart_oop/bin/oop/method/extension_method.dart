class Person {
  String name = "brook";
}

extension sayGoodBye on Person{

  void goodBye(String paramName){
    print("hello $paramName, $name");
  }

}

void main(){
  /**
   * cara menambahkan method terhadap class yang sudah ada tanpa mengubah class tersebut
   * hal ini bermanfaat ketika Classnya dalah milik class library orang lainbukan kita yang buat
   * cara membuatnya:
   * kita perlu menggunakan kata kunci extendsion diikuti nama extensionnya(bebas) lalu diikuti kata kunci (on) dan nama class yang kita tambahkan extension methodnya
   */

  var person = Person();
  person.goodBye("Brother");
}