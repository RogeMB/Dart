class Person {
  // By default all members are public.
  // final properties can not be used as a setter.
  // Once the final property is set, we can not change its value or its reference.

  String? name;
  int? age;
  String? _address = 'No-address'; // Private member.
  final String? email;

  //* constructors
  // A default constructor is automatically generated with no arguments and invokes the no-arguments
  // constructor of the super class.
  // Constructor aren't inherited by default.
  // Positional parameters with [] are optional. We can also have named parameters
  // as optional or required with "required" keyword.
  // We can not have optional parameters with [] and named parameters at the same time.

  //* Example 1:
  Person(this.name, this.email,
      {this.age =
          18}); // this.age is optional, argument by name and default value is 18;

  //* Example Named constructor:
  /// A named constructor is used to implement multiple constructor for a class.
  Person.namedDefaultPerson({
    String name = 'Javier',
    int age = 29,
    this.email = 'javier@gmail.com',
  }) {
    this.name = name; // property and argument.
    this.age = age;
  }

  // this.name = whoever we choose VS String name = null
  Person.oldDefaultPerson(this.name, {this.email = 'roge@gmail.com'}) {
    this.age = 80;
  }

  //* colon operator is used to define a constructor with a list of initializers of one or more parameters.
  /// Constructor initializer list is used to initialize the properties of the class with colon operator.
  Person.unNamed()
      : name = '',
        age = 21,
        _address = 'Fake-address',
        email = 'Fake-email@example.com';

  //* gets and sets
  /// Are special methos that provide read and write access to an objetc's properties (either public or private).
  /// By default, each instance variable has an implicit getter and a setter if appropieate.
  String get getAddress => _address ?? 'No-address';
  String get getAddressToUpperCase => _address?.toUpperCase() ?? 'No-address';

  void set address(String value) => _address = value;
  void set email(String? value) =>
      email = value; // We should not use setters with final properties.

//* methods
  @override
  String toString() {
    return 'Person(name: $name, age: $age, address: $_address, email: $email)';
  }
}
