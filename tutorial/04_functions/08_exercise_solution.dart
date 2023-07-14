import 'dart:io';

void main() {
  stdout.writeln('Starting app...');

  String answer;
  int index = 1;

  do {
    Map<String, dynamic> user = getUser();
    calculateSalary(user);
    printHeader(index: index, name: user['name']);
    printUser(user);

    stdout.writeln('\nDo you want to continue? (y/n)');
    answer = stdin.readLineSync() ?? 'y';

    if (answer != 'y' && answer != 'n') {
      answer = 'y';
    }
    index++;
  } while (answer != 'n');

  stdout.writeln('\nExiting app...');
}

void printHeader({required int index, String name = 'no-name'}) {
  stdout.writeln('\n=========== User $index : $name =============');
}

String getName() {
  stdout.writeln('\nWhat is your name?');
  String? name = stdin.readLineSync() ?? '';
  return name != '' ? name : 'no-name';
}

int getAge() {
  stdout.writeln('How old are you?');
  int? age = int.tryParse(stdin.readLineSync() ?? '0');
  return age != null ? age : 0;
}

String getCountry() {
  stdout.writeln('Which country were you born in?');
  String? country = stdin.readLineSync() ?? '';
  return country != '' ? country : 'no-country';
}

void calculateSalary(Map<String, dynamic> user) {
  stdout.writeln('What is the user salary?');
  double? salaryInput = double.tryParse(stdin.readLineSync() ?? '0.0');

  double salary = salaryInput != null ? salaryInput : 0;
  double deductions = salary * 0.15;
  double netSalary = salary - deductions;

  user['salary'] = salary;
  user['deductions'] = deductions;
  user['netSalary'] = netSalary;
}

Map<String, dynamic> getUser() {
  String name = getName();
  int age = getAge();
  String country = getCountry();

  final Map<String, dynamic> user = {
    'name': name,
    'age': age,
    'country': country,
    'salary': 0.0,
    'deductions': 0.0,
    'netSalary': 0.0,
  };
  return user;
}

void printUser(Map<String, dynamic> user) {
  if (user['salary'] == 0.0) {
    stdout.writeln('User without tax deductions');
  } else {
    stdout.writeln('User with tax deductions');
  }
  stdout.writeln(user);
}
