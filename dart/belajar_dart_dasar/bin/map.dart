void main(){
  /**
   * Map adalah tipe data key-value, key seperti index, value adalah datanya
   * sekilas mirip list, nilainya berupa int auto increment dimulai dari nol
   * sedangkan pada map, keynya bisa ditentukan dengan tipe data apapun, dan kita perlu tentukan secara manual keynya keika memasukan valuenya
   * jika kita memasukkan dengan key yang sudah ada, secara otomatis data dengan key lama akan diganti dengan data yang baru
   */

  var name = <String, String>{};

  name['first'] = 'ridho';
  name['middle'] = 'phageis';
  name['last'] = 'swara';

  print(name);
  print(name['first']);
  print(name['first'] = 'syabani');
  print(name);

}