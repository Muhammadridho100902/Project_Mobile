void main(){
  /**
   * kemampuan sebuah function atau anon berinteraksi dengan data" di sekitarnya dalam scope yang sama
   * harap menggunakan fitur closure dengan bijak saat membuat aplikasi
   */

  var counter = 0;
  void increment(){
    print('increment');
    counter++;
  }

  print(counter);

  increment();
  increment();
  
  print(counter);
}