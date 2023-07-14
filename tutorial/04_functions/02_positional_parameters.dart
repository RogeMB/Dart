import 'dart:io';

void main() {
  String? name;
  int? age;

  stdout.writeln('Welcome to the program!');
  stdout.write('Write your name: ');
  name = stdin.readLineSync() ?? 'no-name';

  stdout.write('\nWrite your age: ');
  age = int.tryParse(stdin.readLineSync() ?? '0');

  stdout.writeln('${greetings(name, age)}');

  stdout.writeln('\nEnd of the program!');
}

String greetings(String name, [int? age = 18]) {
  return "Hello, $name! You are ${age ?? 18} years old!";
}
