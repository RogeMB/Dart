class Square {
  int basee;
  int height;

  Square(this.basee, this.height);

  void baseSetter(int x) {
    basee = x;
  }

  void heightSetter(int x) {
    height = x;
  }

  void showSquare() {
    print('Square(base: $basee, height: $height)');
  }

  void calculateArea() {
    print('area: ${basee * height}');
  }
}

void main() {
  Square squareOne = new Square(2, 3);
  squareOne.baseSetter(4);
  squareOne.heightSetter(5);
  squareOne.showSquare();
  squareOne.calculateArea();

  //* Cascade notation
  Square squareTwo = Square(2, 3);
  squareTwo
    ?..baseSetter(4)
    ..heightSetter(5)
    ..showSquare()
    ..calculateArea();
  //* null-shorting cascade --> ?.. is unnecessary, just for showing it.
  //* It guarantees that none of the cascade operations are attempted on null objects.
}
