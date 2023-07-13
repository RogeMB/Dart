import 'dart:io';

void main() {
  int counter = 0;
  String outFlag = 'y';
  stdout.writeln('Hello\nStarting program...');

  do {
    stdout.writeln('Current counter: $counter');
    stdout.writeln('Do you want to continue? (y/n)');

    outFlag = stdin.readLineSync() ?? '';

    if (outFlag == '') {
      outFlag = 'y';
      counter++;
    } else if (outFlag.toLowerCase() != 'n' || outFlag.toLowerCase() != 'y') {
      while (outFlag.toLowerCase() != 'y' && outFlag.toLowerCase() != 'n') {
        stdout.writeln('Error: Write a valid input: (y/n)');
        outFlag = stdin.readLineSync() ?? '';
      }
    }

    stdout.writeln('End of program.');
  } while (outFlag.toLowerCase() == 'y');
}
