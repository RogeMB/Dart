import 'classes/person.dart';

void main(List<String> args) {
  // Dart is an object-oriented programming language with classes and mixin-based inheritance.
  // Every object is a class which descends from class 'Object', except Null.
  // Objets have members (methods (functions) and intance variables (data)).

  final Person personOne = Person('Roge', 'roge@gmail.com', age: 34);
  print(personOne);

  print('============================================');

  // Cascade notation.
  personOne
    ..name = "Carlota"
    ..age = 30
    ..address = "Triana"; // setter

  print(personOne);
  print(personOne.getAddress); // getter

  print('============================================');

  final Person personTwo = Person.namedDefaultPerson();
  print(personTwo);

  print('============================================');

  final Person personThree = Person.unNamed();
  print(personThree);

  print('============================================');

  final Person personFour =
      Person.oldDefaultPerson("Roges", email: "spam@gmail.com");
  print(personFour);
  
}
