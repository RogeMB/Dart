import 'dart:io';

void main() {
  bool flag = true;
  int forbiddenNumber;
  List<int> validNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  stdout.writeln('Hello\n Starting program...');

  do {
    forbiddenNumber = 0;
    while (forbiddenNumber == 0 || !isValidNumber(forbiddenNumber)) {
      stdout.writeln(
          '\nWrite a number between 1 and 9 that you don\'t want print. \n'
          'Your forbidden number: ');
      String input = stdin.readLineSync()?.trim() ?? '';  //* Conditional member access (?.)
      forbiddenNumber = input.isEmpty ? 0 : int.tryParse(input) ?? 0;
    }

    if (isValidNumber(forbiddenNumber)) {
      for (var number in validNumbers) {
        if (number == forbiddenNumber) {
          continue; //* skip this iteration to the next loop iteration
        }
        if (number == 10) break; //* exit the loop if the number is 10

        stdout.writeln('$number');
      }
      stdout.write('\nPress ENTER to exit or anything else to continue: ');
      String input = stdin.readLineSync() ?? '';

      flag = input.isNotEmpty;
    }
  } while (flag);

  stdout.write('\nEnd of program.');
}

bool isValidNumber(int number) {
  return number >= 1 && number <= 9;
}
