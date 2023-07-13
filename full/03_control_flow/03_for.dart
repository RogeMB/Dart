import 'dart:io';

void main() {
  int max = 10;
  String number;

  stdout.writeln('Hello! Starting program...');
  stdout.write('Write the number you want to calculate its time table: ');

  number = stdin.readLineSync() ?? '';

  if (number == '')
    return stdout.write('You must enter a valid number.\nEnd of program.');

  stdout.writeln('Time Table of $number:');

  for (int i = 0; i < max + 1; i++) {
    stdout.writeln('index i: $i * $number = ${i * int.parse(number)}');
  }

  stdout.writeln('End of program.');
}
