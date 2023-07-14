import 'dart:io';
import 'dart:math';

void main() {
  stdout.writeln('Welcome to the program');

  int rnd = Random().nextInt(10);

  //* Switch statement
  switch (rnd) {
    case 0:
      continue mondayCase;

    mondayCase:
    case 1:
      stdout.writeln('\n$rnd: Monday.');
      break;
    case 2:
      stdout.writeln('\n$rnd: Tuesday.');
      break;
    case 3:
      stdout.writeln('\n$rnd: Wednesday.');
      break;
    case 4:
      stdout.writeln('\n$rnd: Thursday.');
      break;
    case 5:
      stdout.writeln('\n$rnd: Friday.');
      break;
    case 6:
      stdout.writeln('\n$rnd: Saturday.');
      break;
    case 7:
      stdout.writeln('\n$rnd: Sunday.');
      break;
    case 8 when rnd >= 8:
      stdout.writeln('\nNo valid day.');
    default:
      throw Exception('\nNo valid day.');
  }

  //* Switch expression
  String weekDay = switch (rnd) {
    0 => 'Monday',
    1 => 'Monday',
    2 => 'Tuesday',
    3 => 'Wednesday',
    4 => 'Thursday',
    5 => 'Friday',
    6 => 'Saturday',
    7 => 'Sunday',
    _ => '\nInvalid day', //Default value
  };
  stdout.write('WeekDay: $weekDay');

  stdout.writeln('\n\nGoodbye!');
}
