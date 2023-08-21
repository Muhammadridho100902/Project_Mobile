void main(){
  /**
   * ini adalah sebuah fitur dimana kita bisa membuat constructor untuk membuat object baru, namun logika cara pembuatan object barunya bisa kita sesuaikan dengan yang kita inginkan
   * misal kita ingin mengembalikan object yang sama berkali kali, kita bisa menggunakan factory constructor
   * caranya menambahakn kta kunci factory sebelum pembuatan constructor
   */

  var database1 = Database.get();
  var database2 = Database.get();

  print(database1 == database2);

}

class Database{

  // ini contructornya
  Database(){
    print("Create new Database");
  }

  // stattic adalah tipe data yang global
  static Database database = Database();

  // factory constuctor membutuhkan return value
  factory Database.get(){
    return database;
  }
}