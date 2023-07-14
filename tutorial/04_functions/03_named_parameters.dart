import 'dart:io';

void main() {
  String? name;
  int? age;

  stdout.writeln('Welcome to the program!');

  name = getUserName();
  age = getUserAge();

  stdout.writeln('${greetings(name: name, age: age)}');

  stdout.writeln('\nEnd of the program!');
}

String getUserName() {
  stdout.write('Write your name: ');
  return stdin.readLineSync() ?? 'no-name';
}

int? getUserAge() {
  stdout.write('Write your age: ');
  return int.tryParse(stdin.readLineSync() ?? '0');
}

String greetings({required String name, int? age}) {
  final int ageFinal = age != null ? age : 18;
  return "Hello, $name! You are ${ageFinal} years old!";
}
