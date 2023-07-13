import 'dart:io';

void main() {
  stdout.writeln('Hello!\nStarting program...');
  stdout.write('Write your age: ');

  String age = stdin.readLineSync() ?? '';

  // if-case
  if (age == '')
    return stdout.writeln('Error: No age provided\nEnd of program.');

  if (int.parse(age) >= 21) {
    stdout.writeln('You are a adult citizen.');
  } else if (int.parse(age) >= 18) {
    stdout.writeln('You are almost adult.');
  } else {
    stdout.writeln('You are not adult.');
  }

  stdout.writeln('End of program.');
}
