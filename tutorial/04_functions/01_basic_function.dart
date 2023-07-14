import 'dart:io';

void main() {
  String? name;

  stdout.writeln('Welcome to the program!');
  stdout.write('Write your name: ');
  name = stdin.readLineSync() ?? 'no-name';

  stdout.writeln('${greetings(name)}');

  stdout.writeln('End of the program!');
}

String greetings(String name) {
  return "Hello, $name!";
}
