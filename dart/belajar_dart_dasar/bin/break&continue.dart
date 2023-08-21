void main(){
  /**
   * break = untuk menghentikan case dalam switch
   * break digunakan untuk menghentikan semua perulangan
   * continue = untuk menghentikan perulangan saat ini lalu melanjutkan keperulangan berikutnya
   */

  var counter = 1;

  while(true){
    print("perulangan ke-$counter");
    counter++;

    if(counter > 10){
      break;
    }
  }

  // continue
  for(var number = 0; number <= 5; number++){
    if(number % 2 == 0){
      continue;
    }
    print('perulangan ke-$number');
  }
}