void main() {
  const Square firstSquare = const Square(height: 10, widtht: 10);

  var secondSquare = const Square(height: 20, widtht: 20);

  const Square thirdSquare = Square(height: 20, widtht: 20);

  final Square fourthSquare = Square.clone(secondSquare);

  final Square fifthSquare = const Square(height: 10, widtht: 10);

  print(secondSquare == thirdSquare);
  assert(identical(secondSquare, thirdSquare)); //true
  print(firstSquare == secondSquare);
  assert(identical(firstSquare, secondSquare)); // false
  print(firstSquare == thirdSquare);
  assert(identical(firstSquare, thirdSquare)); // false
  print(secondSquare == fourthSquare);
  assert(identical(secondSquare, fourthSquare)); // false
  print(firstSquare == fifthSquare);
  assert(identical(firstSquare, fifthSquare)); // true
}

class Square {
  final double height;
  final double widtht;

  /// This is a compile-time constant constructor. To do this, all variables must be declared as final and use colon (:) at the end of the constructor.
  /// Within a constant context we can omit the const keyword before a constructor or literal.
  /// If a constant consturctor is outside of a constant context and is invoked without const,
  /// it creates a non-constant object.
  const Square({
    this.height = 10,
    this.widtht = 20,
  });

  Square.clone(Square newSquare)
      : this(height: newSquare.height, widtht: newSquare.widtht);
}
