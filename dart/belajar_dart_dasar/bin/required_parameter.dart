void main(){
  /**
   * pada named parameter kita  bisa memaksasebuah parameter menjadi mandatory sehingga kita bisa memanggil function tersebut dan parameternya wajib dipanggil
   * caranya kita bisa menambahkan kata kunci required
   */
  sayHello(firstName: 'ridho', lastName: 'phageis');

}

void sayHello({required String firstName, String lastName = 'default'}){
  print('hello $firstName $lastName');
}