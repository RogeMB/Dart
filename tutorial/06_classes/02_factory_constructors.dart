void main(List<String> args) {
  final Rectangle rectangleExample = Rectangle.factorized(10, 14);
  final Rectangle squareExample = Rectangle.factorized(10, 10);
  print(rectangleExample);
  print(squareExample);
}

class Rectangle {
  late final double width;
  late final double height;
  late final double area;
  late final String type;

  Rectangle({
    required this.width,
    required this.height,
    required this.area,
    required this.type,
  });

  //* A factory constructor might return a new instance, an instance from the cache, or an instance of a subclass.
  //* A factory constructor is not used to create a new instance of a class.
  //* It can also initialize a final variable using logic that can't be handled in the initializer list.
  //* A factory constructor can use control flow therefore must return a value with 'return' keyword or '=>' operator.
  //* A factory constructor can not use 'this' keyword.
  factory Rectangle.factorized(double width, double height) {
    if (width == height) return Rectangle.square(width);
    return Rectangle.rectangle(width, height);
  }

  Rectangle.square(double side) {
    this.width = side;
    this.height = side;
    this.area = side * side;
    this.type = "Square";
  }
  Rectangle.rectangle(double width, double height) {
    this.width = width;
    this.height = height;
    this.area = height * width;
    this.type = "Rectangle";
  }

  @override
  String toString() =>
      {"width": width, "height": height, "area": area, "type": type}.toString();
}
