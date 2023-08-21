class Rectangle {
  int _width = 0;
  int _length = 0;

  // int get width{
  //   return _width;
  // } cara 1

  // cara 2 bisa dengan anon method
  int get width => _width;

  set width(int value) => _width = value;

  int get length => _length;

  set length(int value) => _length = value;
}
