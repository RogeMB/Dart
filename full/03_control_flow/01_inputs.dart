import 'dart:io';

void main() {
  stdout.writeln('Hello!\nStarting program...');

  // write in terminal
  stdout.write('Write your name: ');

  // read from terminal
  String? name = stdin.readLineSync(); // always return String or null

  stdout.writeln('Hello, $name!');
  stdout.write('Write your age: ');

  String? age = stdin.readLineSync();

  stdout.writeln('Your age is: $age');
  stdout.write('End of program.');
}
