class Shape{
  int getCorner(){
    return 0;
  }
}

class Rectangle extends Shape{
  int getCorner(){
    return 4;
  }

  int getParentCorner(){
    return super.getCorner();
  }
}

void main(){
  var rectangle = Rectangle();
  print(rectangle.getCorner());
  print(rectangle.getParentCorner());
}

// untuk mengambil sebuah method atau field yang sudah terlanjur di override di class child
// dengan menggunakan Super Keyword