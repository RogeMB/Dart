/** 
 * Optimize this code:
*/
import 'dart:io';

void main() {
  stdout.writeln('=========== User 1 =============');

  stdout.writeln('What is your name?');
  String name = stdin.readLineSync() ?? '';

  stdout.writeln('How old are you?');
  String age = stdin.readLineSync() ?? '';

  stdout.writeln('Which country were you born in?');
  String country = stdin.readLineSync() ?? '';

  final Map<String, dynamic> user = {
    'name': name,
    'age': age,
    'country': country
  };

  stdout.writeln('User 1 without deductions');
  stdout.writeln(user);

  double salary = 1500;
  double deductions = salary * 0.15;
  double netSalary = salary - deductions;

  user['salary'] = salary;
  user['deductions'] = deductions;
  user['netSalary'] = netSalary;

  stdout.writeln(user);

  stdout.writeln('=========== User 2 =============');

  stdout.writeln('What is your name?');
  String name2 = stdin.readLineSync() ?? '';

  stdout.writeln('How old are you?');
  String age2 = stdin.readLineSync() ?? '';

  stdout.writeln('Which country were you born in?');
  String country2 = stdin.readLineSync() ?? '';

  final Map<String, dynamic> user2 = {
    'name': name2,
    'age': age2,
    'country': country2
  };

  stdout.writeln('User 2 without deductions');
  stdout.writeln(user2);

  double salary2 = 1800;
  double deductions2 = salary2 * 0.15;
  double netSalary2 = salary2 - deductions2;

  user2['salary'] = salary2;
  user2['deductions'] = deductions2;
  user2['netSalary'] = netSalary2;

  stdout.writeln(user2);
}
