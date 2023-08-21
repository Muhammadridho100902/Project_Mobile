void main(){
  /**
   * kita bisa membuat function di dalam outer function
   * hanya bisa di akses  oleh outer function saja
   */

  void sapa(){
    print("hello outer function");
  }

  sapa();
  sapa();

}