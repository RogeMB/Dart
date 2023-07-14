import 'dart:io';

void main() {
  List<String> cityList = ['Seville', 'Dublin', 'NewYork'];

  for (String city in cityList) {
    stdout.writeln('$city');
  }

  stdout.writeln('End of program.');
}
