import 'dart:io';

void main(List<String> args) {
  String answer;
  int result;
  List<int> numbers = [];

  stdout.writeln('Welcome to the program!');
  stdout.writeln('''Write numbers to be summed and will added to a list, 
  and if the sum is greater than 10 it will be displayed and multiplied by two. 
  Only unique numbers will be shown.''');

  do {
    stdout.write('\nEnter a number: ');
    int? a = int.tryParse(stdin.readLineSync() ?? '0');

    if (a == null) {
      stdout.writeln(
          'Error: Invalid input. Please enter a valid number. \nExiting...');
      exit(0);
    }

    stdout.write('Enter another number: ');
    int? b = int.tryParse(stdin.readLineSync() ?? '0');

    if (b == null) {
      stdout.writeln(
          'Error: Invalid input. Please enter a valid number. \nExiting...');
      exit(0);
    }

    result = sum(a, b);

    stdout.writeln('The sum is $result');
    numbers.add(result);

    //! Important
    numbers = numbers
        .where((number) => number > 10)
        .map((number) => number * 2)
        .toSet()
        .toList();

    stdout.writeln('List of numbers: $numbers');

    stdout.writeln('Do you wish to continue? (y/n)');
    answer = stdin.readLineSync()!;
    if (answer != 'y' && answer != 'n') {
      answer = 'y';
    }
  } while (answer == 'y');

  stdout.writeln('\nEnd of program!');
}

int sum(int x, int y) => x + y;
